## Example 1: Create transaction data and mine association rules
a_list <- list(
  c("pm", "ie", "tf", "tw"),
  c("ie", "tf"),
  c("pm", "ie", "tf", "tw", "cd"),
  c("ie", "tw", "cd"),
  c("ie", "tf", "tw", "cd"),
  c("pm", "ie", "cd"),
  c("pm", "ie", "tf", "tw", "cd"),
  c("pm", "ie", "tf", "tw", "cd"),
  c("pm", "ie", "tf", "tw", "cd"),
  c("pm", "ie", "tw", "cd"),
  c("pm", "ie", "tf", "tw", "cd"),
  c("pm", "ie", "tf", "tw", "cd"),
  c("pm", "ie", "tf", "tw", "cd"),
  c("pm", "ie", "tf", "tw", "cd"),
  c("pm", "ie", "tf", "tw", "cd"),
  c("pm", "ie", "tf", "tw", "cd"),
  c("ie", "tf", "tw", "cd"),
  c("tf"),
  c("ie"),
  c("pm", "tf", "cd"),
  c("pm", "ie", "tf", "tw", "cd"),
  c("ie", "tf", "tw"),
  c("pm"),
  c("pm", "ie", "tf", "cd"),
  c("pm", "ie", "tw", "cd"),
  c("pm", "tw", "cd"),
  c("pm", "tw"),
  c("pm", "tw"),
  c("pm", "ie"),
  c("tf", "tw", "cd"),
  c("pm", "ie", "tf", "tw", "cd"),
  c("pm", "tf"),
  c("pm", "tf", "tw", "cd"),
  c( ),
  c("pm", "ie", "cd"),
  c( ),
  c("pm"),
  c("cd")
)

## Set transaction names
names(a_list) <- paste("Tr",c(1:38), sep = "")
a_list

## Use the constructor to create transactions
trans1 <- transactions(a_list)
trans1

rules <- apriori(trans1, parameter = list(minlen=2, maxlen=2, supp = 0.01, conf = 0.2))
inspect(rules)
