library(worldfootballR)

big5_player_standard <- fb_big5_advanced_season_stats(season_end_year= c(2018:2024), stat_type= "standard", team_or_player= "player")
big5_player_shooting <- fb_big5_advanced_season_stats(season_end_year= c(2018:2024), stat_type= "shooting", team_or_player= "player")
big5_player_passing <- fb_big5_advanced_season_stats(season_end_year= c(2018:2024), stat_type= "passing", team_or_player= "player")
big5_player_passing_types <- fb_big5_advanced_season_stats(season_end_year= c(2018:2024), stat_type= "passing_types", team_or_player= "player")
big5_player_gca <- fb_big5_advanced_season_stats(season_end_year= c(2018:2024), stat_type= "gca", team_or_player= "player")
big5_player_defense <- fb_big5_advanced_season_stats(season_end_year= c(2018:2024), stat_type= "defense", team_or_player= "player")
big5_player_possession <- fb_big5_advanced_season_stats(season_end_year= c(2018:2024), stat_type= "possession", team_or_player= "player")

library(openxlsx)
write.csv(big5_player_standard, "D:/Russell/2024-2025 Sems 8/Code/top5_stats_standard.csv", row.names = FALSE)
write.csv(big5_player_passing, "D:/Russell/2024-2025 Sems 8/Code/top5_stats_passing.csv", row.names = FALSE)
write.csv(big5_player_passing_types, "D:/Russell/2024-2025 Sems 8/Code/top5_stats_passing_types.csv", row.names = FALSE)
write.csv(big5_player_shooting, "D:/Russell/2024-2025 Sems 8/Code/top5_stats_shooting.csv", row.names = FALSE)
write.csv(big5_player_gca, "D:/Russell/2024-2025 Sems 8/Code/top5_stats_gca.csv", row.names = FALSE)
write.csv(big5_player_possession, "D:/Russell/2024-2025 Sems 8/Code/top5_stats_possession.csv", row.names = FALSE)
write.csv(big5_player_defense, "D:/Russell/2024-2025 Sems 8/Code/top5_stats_defense.csv", row.names = FALSE)

big5_player_keeper <- fb_big5_advanced_season_stats(season_end_year= c(2018:2024), stat_type= "keepers_adv", team_or_player= "player")
write.csv(big5_player_keeper, "D:/Russell/2024-2025 Sems 8/Code/top5_stats_keeper.csv", row.names = FALSE)

big5_table <- fb_season_team_stats(country = c("ENG", "GER","ESP","FRA","ITA"), gender = "M", season_end_year = c(2018:2024), tier = "1st", stat_type = "league_table_home_away")
write.csv(big5_table, "D:/Russell/2024-2025 Sems 8/Code/top5_table.csv", row.names = FALSE)

