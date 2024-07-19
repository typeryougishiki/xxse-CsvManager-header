#pragma once
namespace CsvManagerUse{
	namespace NoLogger {
		template<typename... ArgsType>
		inline static void info(ArgsType...) {};
		template<typename... ArgsType>
		inline static void warn(ArgsType...) {};
		template<typename... ArgsType>
		inline static void error(ArgsType...) {};
	}
}
