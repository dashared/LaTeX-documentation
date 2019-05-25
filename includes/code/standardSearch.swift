var filteredDataSource = [String]()
var dataSource = [String]()
func filterContentForSearchText(_ searchText: String)
{
    filteredDataSource = dataSource.filter {
        $0.lowercased().contains(searchText.lowercased()) }
}
