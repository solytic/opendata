# Bronze Demo Data

This directory contains raw (bronze) data of some of our demo PV plants.

The data set is partitioned by the arrival date of the data.

The dataset contains the following columns:

- `DeviceID`: a unique identifier of the device that transmitted the data (pseudonymized)
- `DataSourceID`: a unique identifier of a data source that transmitted the data (pseudonymized)
- `SiteID`: a unique identifier of a site (PV installation) that transmitted the data (pseudonymized)
- `DeviceType`: the type of device that took the measurements
- `Timestamp`: the timestamp when the measurement was taken by the Device
- `Metric`: the metric that was measured by the device
- `ProcessingTimestamp`: the timestamp when the data was processed in our system

The IDs were hashed to pseudonymize the data.
