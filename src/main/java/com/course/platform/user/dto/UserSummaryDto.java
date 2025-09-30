package com.course.platform.user.dto;

import lombok.*;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class UserSummaryDto {
    private Integer id;
    private String name;
    private String roleName;
}
