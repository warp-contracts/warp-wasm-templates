#[cfg(test)]
mod tests {
    use std::path::Path;
    use std::{env, fs};

    use schemars::JsonSchema;

    use crate::action::{ReadAction, WriteAction, ReadResponse};
    use crate::state::ContractState;
    use strum::IntoEnumIterator;
    use serde::Serialize;

    const SCHEMAS_DIR: &str = "./bindings/json";

    fn generate<T: IntoEnumIterator>(name: &str) -> Result<(), std::io::Error> where <T as IntoEnumIterator>::Iterator: Iterator, 
    <<T as IntoEnumIterator>::Iterator as Iterator>::Item: Serialize {
        let mut owned_string: String = r#"{"oneOf": ["#.to_owned();
        for (i, r) in T::iter().enumerate() {
            let schema = schemars::schema_for_value!(r);
            owned_string.push_str(&serde_json::to_string_pretty(&schema)?);
            if i == T::iter().count() - 1 {
                owned_string.push_str("");
            } else {
                owned_string.push_str(", ");
            }   
        }  
        owned_string.push_str("]}");
        let schema_file = Path::new(SCHEMAS_DIR).join(name).with_extension("json");
        fs::create_dir_all(SCHEMAS_DIR)?;
        fs::write(&schema_file, owned_string)?;

        Ok(())
    }

    #[test]
    fn generate_json() -> Result<(), std::io::Error> {
        let run = if let Ok(run) = env::var("GENERATE_JSON") {
            run == "true" || run == "1"
        } else {
            false
        };

        if !run {
            return Ok(());
        }
        generate::<ReadAction>("ReadAction")?;
        generate::<WriteAction>("WriteAction")?;
        generate::<ReadResponse>("ReadResponse")?;
        generate::<ContractState>("ContractState")?;

        Ok(())
    }
}
