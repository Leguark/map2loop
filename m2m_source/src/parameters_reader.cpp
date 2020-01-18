/******************************************************************************
* Parameter reader.
*
* Author: Vitaliy Ogarko, vogarko@gmail.com
*******************************************************************************/

#include <string>
#include <iostream>
#include <fstream>
#include <exception>

#include "parameters_reader.h"

namespace ConverterLib {

//! Extract a value after '=' symbol.
static std::string GetValue(std::string str)
{
  return str.substr(str.find('=') + 1, str.length());
}

//! Extract a value before '=' symbol.
static std::string GetDescription(std::string str)
{
  return str.substr(0, str.find('=') + 1);
}

//! Reading input parameters from a file.
std::string Parameters::Read(const std::string &filename)
{
    std::ifstream infile(filename.c_str());

    if (!infile.good()) {
      throw std::runtime_error("Error in opening the file: " + filename);
    } else {
      std::cout << "Reading data from the file: " << filename << std::endl;
    }

    std::string line;
    char buf[200], c;

    std::getline(infile, line);
    std::cout << line << std::endl;

    std::getline(infile, line);
    constNames["FIELD_COORDINATES"] = GetValue(line);
    std::cout << GetDescription(line) << constNames["FIELD_COORDINATES"] << std::endl;

    std::getline(infile, line);
    constNames["FIELD_FAULT_ID"] = GetValue(line);
    std::cout << GetDescription(line) << constNames["FIELD_FAULT_ID"] << std::endl;

    std::getline(infile, line);
    constNames["FIELD_FAULT_FEATURE"] = GetValue(line);
    std::cout << GetDescription(line) << constNames["FIELD_FAULT_FEATURE"] << std::endl;

    std::getline(infile, line);
    constNames["FIELD_POINT_ID"] = GetValue(line);
    std::cout << GetDescription(line) << constNames["FIELD_POINT_ID"] << std::endl;

    std::getline(infile, line);
    constNames["FIELD_POINT_DIP"] = GetValue(line);
    std::cout << GetDescription(line) << constNames["FIELD_POINT_DIP"] << std::endl;

    std::getline(infile, line);
    constNames["FIELD_POINT_DIP_DIR"] = GetValue(line);
    std::cout << GetDescription(line) << constNames["FIELD_POINT_DIP_DIR"] << std::endl;

    std::getline(infile, line);
    constNames["FIELD_POLYGON_ID"] = GetValue(line);
    std::cout << GetDescription(line) << constNames["FIELD_POLYGON_ID"] << std::endl;

    std::getline(infile, line);
    constNames["FIELD_POLYGON_LEVEL1_NAME"] = GetValue(line);
    std::cout << GetDescription(line) << constNames["FIELD_POLYGON_LEVEL1_NAME"] << std::endl;

    std::getline(infile, line);
    constNames["FIELD_POLYGON_LEVEL2_NAME"] = GetValue(line);
    std::cout << GetDescription(line) << constNames["FIELD_POLYGON_LEVEL2_NAME"] << std::endl;

    std::getline(infile, line);
    constNames["FIELD_POLYGON_MIN_AGE"] = GetValue(line);
    std::cout << GetDescription(line) << constNames["FIELD_POLYGON_MIN_AGE"] << std::endl;

    std::getline(infile, line);
    constNames["FIELD_POLYGON_MAX_AGE"] = GetValue(line);
    std::cout << GetDescription(line) << constNames["FIELD_POLYGON_MAX_AGE"] << std::endl;

    std::getline(infile, line);
    constNames["FIELD_POLYGON_CODE"] = GetValue(line);
    std::cout << GetDescription(line) << constNames["FIELD_POLYGON_CODE"] << std::endl;

    std::getline(infile, line);
    constNames["FIELD_POLYGON_DESCRIPTION"] = GetValue(line);
    std::cout << GetDescription(line) << constNames["FIELD_POLYGON_DESCRIPTION"] << std::endl;

    std::getline(infile, line);
    constNames["FIELD_POLYGON_ROCKTYPE1"] = GetValue(line);
    std::cout << GetDescription(line) << constNames["FIELD_POLYGON_ROCKTYPE1"] << std::endl;

    std::getline(infile, line);
    constNames["FIELD_POLYGON_ROCKTYPE2"] = GetValue(line);
    std::cout << GetDescription(line) << constNames["FIELD_POLYGON_ROCKTYPE2"] << std::endl;

    //--------------------------------------------------------------------
    std::getline(infile, line);
    std::cout << line << std::endl;

    std::getline(infile, line);
    constNames["FAULT_AXIAL_FEATURE_NAME"] = GetValue(line);
    std::cout << GetDescription(line) << constNames["FAULT_AXIAL_FEATURE_NAME"] << std::endl;

    std::getline(infile, line);
    constNames["SILL_STRING"] = GetValue(line);
    std::cout << GetDescription(line) << constNames["SILL_STRING"] << std::endl;

    std::getline(infile, line);
    constNames["IGNEOUS_STRING"] = GetValue(line);
    std::cout << GetDescription(line) << constNames["IGNEOUS_STRING"] << std::endl;

    std::getline(infile, line);
    constNames["VOLCANIC_STRING"] = GetValue(line);
    std::cout << GetDescription(line) << constNames["VOLCANIC_STRING"] << std::endl;

    infile.get(buf, 200, '='); infile.get(c); infile >> angleEpsilon;
    std::cout << buf << c << angleEpsilon << std::endl;
    infile.get(c);

    infile.get(buf, 200, '='); infile.get(c); infile >> distanceEpsilon;
    std::cout << buf << c << distanceEpsilon << std::endl;
    infile.get(c);

    //--------------------------------------------------------------------
    std::getline(infile, line);
    std::cout << line << std::endl;

    std::getline(infile, line);
    path_output = GetValue(line);
    std::cout << GetDescription(line) << path_output << std::endl;

    std::getline(infile, line);
    path_geology = GetValue(line);
    std::cout << GetDescription(line) << path_geology << std::endl;

    std::getline(infile, line);
    path_faults = GetValue(line);
    std::cout << GetDescription(line) << path_faults << std::endl;

    std::getline(infile, line);
    path_points = GetValue(line);
    std::cout << GetDescription(line) << path_points << std::endl;

    //--------------------------------------------------------------------
    std::getline(infile, line);
    std::cout << line << std::endl;

    infile.get(buf, 200, '='); infile.get(c);
    infile >> clipping_window[0]; infile >> clipping_window[1]; infile >> clipping_window[2]; infile >> clipping_window[3];
    std::cout << buf << c << clipping_window[0] << " " << clipping_window[1]
              << " " << clipping_window[2] << " " << clipping_window[3] << std::endl;
    infile.get(c);

    infile.get(buf, 200, '='); infile.get(c); infile >> minFractionInMixedContact;
    std::cout << buf << c << minFractionInMixedContact << std::endl;
    infile.get(c);

    double w[3];
    infile.get(buf, 200, '='); infile.get(c); infile >> w[0]; infile >> w[1]; infile >> w[2];
    std::cout << buf << c << w[0] << " " << w[1] << " " << w[2] << std::endl;
    infile.get(c);

    graph_edge_width_categories.push_back(w[0]);
    graph_edge_width_categories.push_back(w[1]);
    graph_edge_width_categories.push_back(w[2]);

    infile.get(buf, 200, '='); infile.get(c); infile >> graph_edge_direction_type;
    std::cout << buf << c << graph_edge_direction_type << std::endl;
    infile.get(c);

    infile.get(buf, 200, '='); infile.get(c); infile >> partial_graph_polygon_id;
    std::cout << buf << c << partial_graph_polygon_id << std::endl;
    infile.get(c);

    infile.get(buf, 200, '='); infile.get(c); infile >> partial_graph_depth;
    std::cout << buf << c << partial_graph_depth << std::endl;
    infile.get(c);

    infile.get(buf, 200, '='); infile.get(c);
    infile >> subregion_size_x; infile >> subregion_size_y;
    std::cout << buf << c << subregion_size_x << " " << subregion_size_y << std::endl;
    infile.get(c);

    std::getline(infile, line);
    std::cout << line << std::endl;

    //-------------------------------------------------------------------------------
    // Return to the beginning of the file.
    infile.clear();
    infile.seekg(0, std::ios::beg);

    // Store all input parameter lines.
    std::string parameter_lines = "";
    while (std::getline(infile, line)) {
        parameter_lines += "# " + line + '\n';
    }

    return parameter_lines;
}

}


