-- MySQL Script generated by MySQL Workbench
-- Tue Jun 28 22:51:43 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema steam
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema steam
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `steam` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `steam` ;

-- -----------------------------------------------------
-- Table `steam`.`steam`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `steam`.`steam` (
  `appid` INT NOT NULL,
  `name` TEXT NULL DEFAULT NULL,
  `release_date` TEXT NULL DEFAULT NULL,
  `english` INT NULL DEFAULT NULL,
  `developer` TEXT NULL DEFAULT NULL,
  `publisher` TEXT NULL DEFAULT NULL,
  `platforms` TEXT NULL DEFAULT NULL,
  `required_age` INT NULL DEFAULT NULL,
  `categories` TEXT NULL DEFAULT NULL,
  `genres` TEXT NULL DEFAULT NULL,
  `steamspy_tags` TEXT NULL DEFAULT NULL,
  `achievements` INT NULL DEFAULT NULL,
  `positive_ratings` INT NULL DEFAULT NULL,
  `negative_ratings` INT NULL DEFAULT NULL,
  `average_playtime` INT NULL DEFAULT NULL,
  `median_playtime` INT NULL DEFAULT NULL,
  `owners` TEXT NULL DEFAULT NULL,
  `price` DOUBLE NULL DEFAULT NULL,
  PRIMARY KEY (`appid`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `steam`.`steam_description_data`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `steam`.`steam_description_data` (
  `steam_appid` INT NULL DEFAULT NULL,
  `detailed_description` TEXT NULL DEFAULT NULL,
  `about_the_game` TEXT NULL DEFAULT NULL,
  `short_description` TEXT NULL DEFAULT NULL,
  INDEX `steam_appid_idx` (`steam_appid` ASC) VISIBLE,
  CONSTRAINT `steam_appid`
    FOREIGN KEY (`steam_appid`)
    REFERENCES `steam`.`steam` (`appid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `steam`.`steam_media_data`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `steam`.`steam_media_data` (
  `steam_appid` INT NULL,
  `header_image` TEXT NULL DEFAULT NULL,
  `screenshots` TEXT NULL DEFAULT NULL,
  `background` TEXT NULL DEFAULT NULL,
  `movies` TEXT NULL DEFAULT NULL,
  INDEX `steam_appid_idx` (`steam_appid` ASC) VISIBLE,
  CONSTRAINT `steam_appid`
    FOREIGN KEY (`steam_appid`)
    REFERENCES `steam`.`steam` (`appid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `steam`.`steam_requirements_data`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `steam`.`steam_requirements_data` (
  `steam_appid` INT NULL DEFAULT NULL,
  `pc_requirements` TEXT NULL DEFAULT NULL,
  `mac_requirements` TEXT NULL DEFAULT NULL,
  `linux_requirements` TEXT NULL DEFAULT NULL,
  `minimum` TEXT NULL DEFAULT NULL,
  `recommended` TEXT NULL DEFAULT NULL,
  INDEX `steam_appid_idx` (`steam_appid` ASC) VISIBLE,
  CONSTRAINT `steam_appid`
    FOREIGN KEY (`steam_appid`)
    REFERENCES `steam`.`steam` (`appid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `steam`.`steam_support_info`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `steam`.`steam_support_info` (
  `steam_appid` INT NULL DEFAULT NULL,
  `website` TEXT NULL DEFAULT NULL,
  `support_url` TEXT NULL DEFAULT NULL,
  `support_email` TEXT NULL DEFAULT NULL,
  INDEX `steam_appid_idx` (`steam_appid` ASC) VISIBLE,
  CONSTRAINT `steam_appid`
    FOREIGN KEY (`steam_appid`)
    REFERENCES `steam`.`steam` (`appid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `steam`.`steamspy_tag_data`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `steam`.`steamspy_tag_data` (
  `appid` INT NULL DEFAULT NULL,
  `1980s` INT NULL DEFAULT NULL,
  `1990s` INT NULL DEFAULT NULL,
  `2.5d` INT NULL DEFAULT NULL,
  `2d` INT NULL DEFAULT NULL,
  `2d_fighter` INT NULL DEFAULT NULL,
  `360_video` INT NULL DEFAULT NULL,
  `3d` INT NULL DEFAULT NULL,
  `3d_platformer` INT NULL DEFAULT NULL,
  `3d_vision` INT NULL DEFAULT NULL,
  `4_player_local` INT NULL DEFAULT NULL,
  `4x` INT NULL DEFAULT NULL,
  `6dof` INT NULL DEFAULT NULL,
  `atv` INT NULL DEFAULT NULL,
  `abstract` INT NULL DEFAULT NULL,
  `action` INT NULL DEFAULT NULL,
  `action_rpg` INT NULL DEFAULT NULL,
  `action_adventure` INT NULL DEFAULT NULL,
  `addictive` INT NULL DEFAULT NULL,
  `adventure` INT NULL DEFAULT NULL,
  `agriculture` INT NULL DEFAULT NULL,
  `aliens` INT NULL DEFAULT NULL,
  `alternate_history` INT NULL DEFAULT NULL,
  `america` INT NULL DEFAULT NULL,
  `animation_&_modeling` INT NULL DEFAULT NULL,
  `anime` INT NULL DEFAULT NULL,
  `arcade` INT NULL DEFAULT NULL,
  `arena_shooter` INT NULL DEFAULT NULL,
  `artificial_intelligence` INT NULL DEFAULT NULL,
  `assassin` INT NULL DEFAULT NULL,
  `asynchronous_multiplayer` INT NULL DEFAULT NULL,
  `atmospheric` INT NULL DEFAULT NULL,
  `audio_production` INT NULL DEFAULT NULL,
  `bmx` INT NULL DEFAULT NULL,
  `base_building` INT NULL DEFAULT NULL,
  `baseball` INT NULL DEFAULT NULL,
  `based_on_a_novel` INT NULL DEFAULT NULL,
  `basketball` INT NULL DEFAULT NULL,
  `batman` INT NULL DEFAULT NULL,
  `battle_royale` INT NULL DEFAULT NULL,
  `beat_em_up` INT NULL DEFAULT NULL,
  `beautiful` INT NULL DEFAULT NULL,
  `benchmark` INT NULL DEFAULT NULL,
  `bikes` INT NULL DEFAULT NULL,
  `blood` INT NULL DEFAULT NULL,
  `board_game` INT NULL DEFAULT NULL,
  `bowling` INT NULL DEFAULT NULL,
  `building` INT NULL DEFAULT NULL,
  `bullet_hell` INT NULL DEFAULT NULL,
  `bullet_time` INT NULL DEFAULT NULL,
  `crpg` INT NULL DEFAULT NULL,
  `capitalism` INT NULL DEFAULT NULL,
  `card_game` INT NULL DEFAULT NULL,
  `cartoon` INT NULL DEFAULT NULL,
  `cartoony` INT NULL DEFAULT NULL,
  `casual` INT NULL DEFAULT NULL,
  `cats` INT NULL DEFAULT NULL,
  `character_action_game` INT NULL DEFAULT NULL,
  `character_customization` INT NULL DEFAULT NULL,
  `chess` INT NULL DEFAULT NULL,
  `choices_matter` INT NULL DEFAULT NULL,
  `choose_your_own_adventure` INT NULL DEFAULT NULL,
  `cinematic` INT NULL DEFAULT NULL,
  `city_builder` INT NULL DEFAULT NULL,
  `class_based` INT NULL DEFAULT NULL,
  `classic` INT NULL DEFAULT NULL,
  `clicker` INT NULL DEFAULT NULL,
  `co_op` INT NULL DEFAULT NULL,
  `co_op_campaign` INT NULL DEFAULT NULL,
  `cold_war` INT NULL DEFAULT NULL,
  `colorful` INT NULL DEFAULT NULL,
  `comedy` INT NULL DEFAULT NULL,
  `comic_book` INT NULL DEFAULT NULL,
  `competitive` INT NULL DEFAULT NULL,
  `conspiracy` INT NULL DEFAULT NULL,
  `controller` INT NULL DEFAULT NULL,
  `conversation` INT NULL DEFAULT NULL,
  `crafting` INT NULL DEFAULT NULL,
  `crime` INT NULL DEFAULT NULL,
  `crowdfunded` INT NULL DEFAULT NULL,
  `cult_classic` INT NULL DEFAULT NULL,
  `cute` INT NULL DEFAULT NULL,
  `cyberpunk` INT NULL DEFAULT NULL,
  `cycling` INT NULL DEFAULT NULL,
  `dark` INT NULL DEFAULT NULL,
  `dark_comedy` INT NULL DEFAULT NULL,
  `dark_fantasy` INT NULL DEFAULT NULL,
  `dark_humor` INT NULL DEFAULT NULL,
  `dating_sim` INT NULL DEFAULT NULL,
  `demons` INT NULL DEFAULT NULL,
  `design_&_illustration` INT NULL DEFAULT NULL,
  `destruction` INT NULL DEFAULT NULL,
  `detective` INT NULL DEFAULT NULL,
  `difficult` INT NULL DEFAULT NULL,
  `dinosaurs` INT NULL DEFAULT NULL,
  `diplomacy` INT NULL DEFAULT NULL,
  `documentary` INT NULL DEFAULT NULL,
  `dog` INT NULL DEFAULT NULL,
  `dragons` INT NULL DEFAULT NULL,
  `drama` INT NULL DEFAULT NULL,
  `driving` INT NULL DEFAULT NULL,
  `dungeon_crawler` INT NULL DEFAULT NULL,
  `dungeons_&_dragons` INT NULL DEFAULT NULL,
  `dynamic_narration` INT NULL DEFAULT NULL,
  `dystopian_` INT NULL DEFAULT NULL,
  `early_access` INT NULL DEFAULT NULL,
  `economy` INT NULL DEFAULT NULL,
  `education` INT NULL DEFAULT NULL,
  `emotional` INT NULL DEFAULT NULL,
  `epic` INT NULL DEFAULT NULL,
  `episodic` INT NULL DEFAULT NULL,
  `experience` INT NULL DEFAULT NULL,
  `experimental` INT NULL DEFAULT NULL,
  `exploration` INT NULL DEFAULT NULL,
  `fmv` INT NULL DEFAULT NULL,
  `fps` INT NULL DEFAULT NULL,
  `faith` INT NULL DEFAULT NULL,
  `family_friendly` INT NULL DEFAULT NULL,
  `fantasy` INT NULL DEFAULT NULL,
  `fast_paced` INT NULL DEFAULT NULL,
  `feature_film` INT NULL DEFAULT NULL,
  `female_protagonist` INT NULL DEFAULT NULL,
  `fighting` INT NULL DEFAULT NULL,
  `first_person` INT NULL DEFAULT NULL,
  `fishing` INT NULL DEFAULT NULL,
  `flight` INT NULL DEFAULT NULL,
  `football` INT NULL DEFAULT NULL,
  `foreign` INT NULL DEFAULT NULL,
  `free_to_play` INT NULL DEFAULT NULL,
  `funny` INT NULL DEFAULT NULL,
  `futuristic` INT NULL DEFAULT NULL,
  `gambling` INT NULL DEFAULT NULL,
  `game_development` INT NULL DEFAULT NULL,
  `gamemaker` INT NULL DEFAULT NULL,
  `games_workshop` INT NULL DEFAULT NULL,
  `gaming` INT NULL DEFAULT NULL,
  `god_game` INT NULL DEFAULT NULL,
  `golf` INT NULL DEFAULT NULL,
  `gore` INT NULL DEFAULT NULL,
  `gothic` INT NULL DEFAULT NULL,
  `grand_strategy` INT NULL DEFAULT NULL,
  `great_soundtrack` INT NULL DEFAULT NULL,
  `grid_based_movement` INT NULL DEFAULT NULL,
  `gun_customization` INT NULL DEFAULT NULL,
  `hack_and_slash` INT NULL DEFAULT NULL,
  `hacking` INT NULL DEFAULT NULL,
  `hand_drawn` INT NULL DEFAULT NULL,
  `hardware` INT NULL DEFAULT NULL,
  `heist` INT NULL DEFAULT NULL,
  `hex_grid` INT NULL DEFAULT NULL,
  `hidden_object` INT NULL DEFAULT NULL,
  `historical` INT NULL DEFAULT NULL,
  `hockey` INT NULL DEFAULT NULL,
  `horror` INT NULL DEFAULT NULL,
  `horses` INT NULL DEFAULT NULL,
  `hunting` INT NULL DEFAULT NULL,
  `illuminati` INT NULL DEFAULT NULL,
  `indie` INT NULL DEFAULT NULL,
  `intentionally_awkward_controls` INT NULL DEFAULT NULL,
  `interactive_fiction` INT NULL DEFAULT NULL,
  `inventory_management` INT NULL DEFAULT NULL,
  `investigation` INT NULL DEFAULT NULL,
  `isometric` INT NULL DEFAULT NULL,
  `jrpg` INT NULL DEFAULT NULL,
  `jet` INT NULL DEFAULT NULL,
  `kickstarter` INT NULL DEFAULT NULL,
  `lego` INT NULL DEFAULT NULL,
  `lara_croft` INT NULL DEFAULT NULL,
  `lemmings` INT NULL DEFAULT NULL,
  `level_editor` INT NULL DEFAULT NULL,
  `linear` INT NULL DEFAULT NULL,
  `local_co_op` INT NULL DEFAULT NULL,
  `local_multiplayer` INT NULL DEFAULT NULL,
  `logic` INT NULL DEFAULT NULL,
  `loot` INT NULL DEFAULT NULL,
  `lore_rich` INT NULL DEFAULT NULL,
  `lovecraftian` INT NULL DEFAULT NULL,
  `mmorpg` INT NULL DEFAULT NULL,
  `moba` INT NULL DEFAULT NULL,
  `magic` INT NULL DEFAULT NULL,
  `management` INT NULL DEFAULT NULL,
  `mars` INT NULL DEFAULT NULL,
  `martial_arts` INT NULL DEFAULT NULL,
  `massively_multiplayer` INT NULL DEFAULT NULL,
  `masterpiece` INT NULL DEFAULT NULL,
  `match_3` INT NULL DEFAULT NULL,
  `mature` INT NULL DEFAULT NULL,
  `mechs` INT NULL DEFAULT NULL,
  `medieval` INT NULL DEFAULT NULL,
  `memes` INT NULL DEFAULT NULL,
  `metroidvania` INT NULL DEFAULT NULL,
  `military` INT NULL DEFAULT NULL,
  `mini_golf` INT NULL DEFAULT NULL,
  `minigames` INT NULL DEFAULT NULL,
  `minimalist` INT NULL DEFAULT NULL,
  `mining` INT NULL DEFAULT NULL,
  `mod` INT NULL DEFAULT NULL,
  `moddable` INT NULL DEFAULT NULL,
  `modern` INT NULL DEFAULT NULL,
  `motocross` INT NULL DEFAULT NULL,
  `motorbike` INT NULL DEFAULT NULL,
  `mouse_only` INT NULL DEFAULT NULL,
  `movie` INT NULL DEFAULT NULL,
  `multiplayer` INT NULL DEFAULT NULL,
  `multiple_endings` INT NULL DEFAULT NULL,
  `music` INT NULL DEFAULT NULL,
  `music_based_procedural_generation` INT NULL DEFAULT NULL,
  `mystery` INT NULL DEFAULT NULL,
  `mystery_dungeon` INT NULL DEFAULT NULL,
  `mythology` INT NULL DEFAULT NULL,
  `nsfw` INT NULL DEFAULT NULL,
  `narration` INT NULL DEFAULT NULL,
  `naval` INT NULL DEFAULT NULL,
  `ninja` INT NULL DEFAULT NULL,
  `noir` INT NULL DEFAULT NULL,
  `nonlinear` INT NULL DEFAULT NULL,
  `nudity` INT NULL DEFAULT NULL,
  `offroad` INT NULL DEFAULT NULL,
  `old_school` INT NULL DEFAULT NULL,
  `on_rails_shooter` INT NULL DEFAULT NULL,
  `online_co_op` INT NULL DEFAULT NULL,
  `open_world` INT NULL DEFAULT NULL,
  `otome` INT NULL DEFAULT NULL,
  `parkour` INT NULL DEFAULT NULL,
  `parody_` INT NULL DEFAULT NULL,
  `party_based_rpg` INT NULL DEFAULT NULL,
  `perma_death` INT NULL DEFAULT NULL,
  `philisophical` INT NULL DEFAULT NULL,
  `photo_editing` INT NULL DEFAULT NULL,
  `physics` INT NULL DEFAULT NULL,
  `pinball` INT NULL DEFAULT NULL,
  `pirates` INT NULL DEFAULT NULL,
  `pixel_graphics` INT NULL DEFAULT NULL,
  `platformer` INT NULL DEFAULT NULL,
  `point_&_click` INT NULL DEFAULT NULL,
  `political` INT NULL DEFAULT NULL,
  `politics` INT NULL DEFAULT NULL,
  `pool` INT NULL DEFAULT NULL,
  `post_apocalyptic` INT NULL DEFAULT NULL,
  `procedural_generation` INT NULL DEFAULT NULL,
  `programming` INT NULL DEFAULT NULL,
  `psychedelic` INT NULL DEFAULT NULL,
  `psychological` INT NULL DEFAULT NULL,
  `psychological_horror` INT NULL DEFAULT NULL,
  `puzzle` INT NULL DEFAULT NULL,
  `puzzle_platformer` INT NULL DEFAULT NULL,
  `pve` INT NULL DEFAULT NULL,
  `pvp` INT NULL DEFAULT NULL,
  `quick_time_events` INT NULL DEFAULT NULL,
  `rpg` INT NULL DEFAULT NULL,
  `rpgmaker` INT NULL DEFAULT NULL,
  `rts` INT NULL DEFAULT NULL,
  `racing` INT NULL DEFAULT NULL,
  `real_time_tactics` INT NULL DEFAULT NULL,
  `real_time` INT NULL DEFAULT NULL,
  `real_time_with_pause` INT NULL DEFAULT NULL,
  `realistic` INT NULL DEFAULT NULL,
  `relaxing` INT NULL DEFAULT NULL,
  `remake` INT NULL DEFAULT NULL,
  `replay_value` INT NULL DEFAULT NULL,
  `resource_management` INT NULL DEFAULT NULL,
  `retro` INT NULL DEFAULT NULL,
  `rhythm` INT NULL DEFAULT NULL,
  `robots` INT NULL DEFAULT NULL,
  `rogue_like` INT NULL DEFAULT NULL,
  `rogue_lite` INT NULL DEFAULT NULL,
  `romance` INT NULL DEFAULT NULL,
  `rome` INT NULL DEFAULT NULL,
  `runner` INT NULL DEFAULT NULL,
  `sailing` INT NULL DEFAULT NULL,
  `sandbox` INT NULL DEFAULT NULL,
  `satire` INT NULL DEFAULT NULL,
  `sci_fi` INT NULL DEFAULT NULL,
  `science` INT NULL DEFAULT NULL,
  `score_attack` INT NULL DEFAULT NULL,
  `sequel` INT NULL DEFAULT NULL,
  `sexual_content` INT NULL DEFAULT NULL,
  `shoot_em_up` INT NULL DEFAULT NULL,
  `shooter` INT NULL DEFAULT NULL,
  `short` INT NULL DEFAULT NULL,
  `side_scroller` INT NULL DEFAULT NULL,
  `silent_protagonist` INT NULL DEFAULT NULL,
  `simulation` INT NULL DEFAULT NULL,
  `singleplayer` INT NULL DEFAULT NULL,
  `skateboarding` INT NULL DEFAULT NULL,
  `skating` INT NULL DEFAULT NULL,
  `skiing` INT NULL DEFAULT NULL,
  `sniper` INT NULL DEFAULT NULL,
  `snow` INT NULL DEFAULT NULL,
  `snowboarding` INT NULL DEFAULT NULL,
  `soccer` INT NULL DEFAULT NULL,
  `software` INT NULL DEFAULT NULL,
  `software_training` INT NULL DEFAULT NULL,
  `sokoban` INT NULL DEFAULT NULL,
  `souls_like` INT NULL DEFAULT NULL,
  `soundtrack` INT NULL DEFAULT NULL,
  `space` INT NULL DEFAULT NULL,
  `space_sim` INT NULL DEFAULT NULL,
  `spectacle_fighter` INT NULL DEFAULT NULL,
  `spelling` INT NULL DEFAULT NULL,
  `split_screen` INT NULL DEFAULT NULL,
  `sports` INT NULL DEFAULT NULL,
  `star_wars` INT NULL DEFAULT NULL,
  `stealth` INT NULL DEFAULT NULL,
  `steam_machine` INT NULL DEFAULT NULL,
  `steampunk` INT NULL DEFAULT NULL,
  `story_rich` INT NULL DEFAULT NULL,
  `strategy` INT NULL DEFAULT NULL,
  `strategy_rpg` INT NULL DEFAULT NULL,
  `stylized` INT NULL DEFAULT NULL,
  `submarine` INT NULL DEFAULT NULL,
  `superhero` INT NULL DEFAULT NULL,
  `supernatural` INT NULL DEFAULT NULL,
  `surreal` INT NULL DEFAULT NULL,
  `survival` INT NULL DEFAULT NULL,
  `survival_horror` INT NULL DEFAULT NULL,
  `swordplay` INT NULL DEFAULT NULL,
  `tactical` INT NULL DEFAULT NULL,
  `tactical_rpg` INT NULL DEFAULT NULL,
  `tanks` INT NULL DEFAULT NULL,
  `team_based` INT NULL DEFAULT NULL,
  `tennis` INT NULL DEFAULT NULL,
  `text_based` INT NULL DEFAULT NULL,
  `third_person` INT NULL DEFAULT NULL,
  `third_person_shooter` INT NULL DEFAULT NULL,
  `thriller` INT NULL DEFAULT NULL,
  `time_attack` INT NULL DEFAULT NULL,
  `time_management` INT NULL DEFAULT NULL,
  `time_manipulation` INT NULL DEFAULT NULL,
  `time_travel` INT NULL DEFAULT NULL,
  `top_down` INT NULL DEFAULT NULL,
  `top_down_shooter` INT NULL DEFAULT NULL,
  `touch_friendly` INT NULL DEFAULT NULL,
  `tower_defense` INT NULL DEFAULT NULL,
  `trackir` INT NULL DEFAULT NULL,
  `trading` INT NULL DEFAULT NULL,
  `trading_card_game` INT NULL DEFAULT NULL,
  `trains` INT NULL DEFAULT NULL,
  `transhumanism` INT NULL DEFAULT NULL,
  `turn_based` INT NULL DEFAULT NULL,
  `turn_based_combat` INT NULL DEFAULT NULL,
  `turn_based_strategy` INT NULL DEFAULT NULL,
  `turn_based_tactics` INT NULL DEFAULT NULL,
  `tutorial` INT NULL DEFAULT NULL,
  `twin_stick_shooter` INT NULL DEFAULT NULL,
  `typing` INT NULL DEFAULT NULL,
  `underground` INT NULL DEFAULT NULL,
  `underwater` INT NULL DEFAULT NULL,
  `unforgiving` INT NULL DEFAULT NULL,
  `utilities` INT NULL DEFAULT NULL,
  `vr` INT NULL DEFAULT NULL,
  `vr_only` INT NULL DEFAULT NULL,
  `vampire` INT NULL DEFAULT NULL,
  `video_production` INT NULL DEFAULT NULL,
  `villain_protagonist` INT NULL DEFAULT NULL,
  `violent` INT NULL DEFAULT NULL,
  `visual_novel` INT NULL DEFAULT NULL,
  `voice_control` INT NULL DEFAULT NULL,
  `voxel` INT NULL DEFAULT NULL,
  `walking_simulator` INT NULL DEFAULT NULL,
  `war` INT NULL DEFAULT NULL,
  `wargame` INT NULL DEFAULT NULL,
  `warhammer_40k` INT NULL DEFAULT NULL,
  `web_publishing` INT NULL DEFAULT NULL,
  `werewolves` INT NULL DEFAULT NULL,
  `western` INT NULL DEFAULT NULL,
  `word_game` INT NULL DEFAULT NULL,
  `world_war_i` INT NULL DEFAULT NULL,
  `world_war_ii` INT NULL DEFAULT NULL,
  `wrestling` INT NULL DEFAULT NULL,
  `zombies` INT NULL DEFAULT NULL,
  `e_sports` INT NULL DEFAULT NULL,
  INDEX `appid_idx` (`appid` ASC) VISIBLE,
  CONSTRAINT `appid`
    FOREIGN KEY (`appid`)
    REFERENCES `steam`.`steam` (`appid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
