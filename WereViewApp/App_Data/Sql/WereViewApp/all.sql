USE [D:\WORKING\GITHUB\WEREVIEWPROJECT\WEREVIEWAPP\APP_DATA\WEREVIEWAPP.MDF]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserPoint_UserPointSetting]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserPoint]'))
ALTER TABLE [dbo].[UserPoint] DROP CONSTRAINT [FK_UserPoint_UserPointSetting]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserPoint_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserPoint]'))
ALTER TABLE [dbo].[UserPoint] DROP CONSTRAINT [FK_UserPoint_User]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TagAppRelation_Tag]') AND parent_object_id = OBJECT_ID(N'[dbo].[TagAppRelation]'))
ALTER TABLE [dbo].[TagAppRelation] DROP CONSTRAINT [FK_TagAppRelation_Tag]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TagAppRelation_App]') AND parent_object_id = OBJECT_ID(N'[dbo].[TagAppRelation]'))
ALTER TABLE [dbo].[TagAppRelation] DROP CONSTRAINT [FK_TagAppRelation_App]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ReviewLikeDislike_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReviewLikeDislike]'))
ALTER TABLE [dbo].[ReviewLikeDislike] DROP CONSTRAINT [FK_ReviewLikeDislike_User]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ReviewLikeDislike_Review]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReviewLikeDislike]'))
ALTER TABLE [dbo].[ReviewLikeDislike] DROP CONSTRAINT [FK_ReviewLikeDislike_Review]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Review_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[Review]'))
ALTER TABLE [dbo].[Review] DROP CONSTRAINT [FK_Review_User]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Review_App]') AND parent_object_id = OBJECT_ID(N'[dbo].[Review]'))
ALTER TABLE [dbo].[Review] DROP CONSTRAINT [FK_Review_App]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Notification_NotificationType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Notification]'))
ALTER TABLE [dbo].[Notification] DROP CONSTRAINT [FK_Notification_NotificationType]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MessageSeen_User1]') AND parent_object_id = OBJECT_ID(N'[dbo].[MessageSeen]'))
ALTER TABLE [dbo].[MessageSeen] DROP CONSTRAINT [FK_MessageSeen_User1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MessageSeen_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[MessageSeen]'))
ALTER TABLE [dbo].[MessageSeen] DROP CONSTRAINT [FK_MessageSeen_User]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Message_User1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Message]'))
ALTER TABLE [dbo].[Message] DROP CONSTRAINT [FK_Message_User1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Message_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[Message]'))
ALTER TABLE [dbo].[Message] DROP CONSTRAINT [FK_Message_User]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LatestSeenNotification_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[LatestSeenNotification]'))
ALTER TABLE [dbo].[LatestSeenNotification] DROP CONSTRAINT [FK_LatestSeenNotification_User]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Gallery_GalleryCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[Gallery]'))
ALTER TABLE [dbo].[Gallery] DROP CONSTRAINT [FK_Gallery_GalleryCategory]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FeaturedImage_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[FeaturedImage]'))
ALTER TABLE [dbo].[FeaturedImage] DROP CONSTRAINT [FK_FeaturedImage_User]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FeaturedImage_App]') AND parent_object_id = OBJECT_ID(N'[dbo].[FeaturedImage]'))
ALTER TABLE [dbo].[FeaturedImage] DROP CONSTRAINT [FK_FeaturedImage_App]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CellPhone_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[CellPhone]'))
ALTER TABLE [dbo].[CellPhone] DROP CONSTRAINT [FK_CellPhone_User]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CellPhone_Platform]') AND parent_object_id = OBJECT_ID(N'[dbo].[CellPhone]'))
ALTER TABLE [dbo].[CellPhone] DROP CONSTRAINT [FK_CellPhone_Platform]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_App_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[App]'))
ALTER TABLE [dbo].[App] DROP CONSTRAINT [FK_App_User]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_App_Platform]') AND parent_object_id = OBJECT_ID(N'[dbo].[App]'))
ALTER TABLE [dbo].[App] DROP CONSTRAINT [FK_App_Platform]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_App_Category]') AND parent_object_id = OBJECT_ID(N'[dbo].[App]'))
ALTER TABLE [dbo].[App] DROP CONSTRAINT [FK_App_Category]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_UserPoint_Point]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[UserPoint] DROP CONSTRAINT [DF_UserPoint_Point]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__tmp_ms_xx__Total__01BE3717]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[User] DROP CONSTRAINT [DF__tmp_ms_xx__Total__01BE3717]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__Review__CreatedD__42CCE065]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Review] DROP CONSTRAINT [DF__Review__CreatedD__42CCE065]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__tmp_ms_xx__DisLi__75C27486]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Review] DROP CONSTRAINT [DF__tmp_ms_xx__DisLi__75C27486]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__tmp_ms_xx__Liked__74CE504D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Review] DROP CONSTRAINT [DF__tmp_ms_xx__Liked__74CE504D]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__Notificat__IsGoo__2FBA0BF1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[NotificationType] DROP CONSTRAINT [DF__Notificat__IsGoo__2FBA0BF1]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_MessageSeen_SentDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[MessageSeen] DROP CONSTRAINT [DF_MessageSeen_SentDate]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_MessageSeen_LastModified]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[MessageSeen] DROP CONSTRAINT [DF_MessageSeen_LastModified]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Message_SentDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Message] DROP CONSTRAINT [DF_Message_SentDate]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Message_LastModified]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Message] DROP CONSTRAINT [DF_Message_LastModified]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__tmp_ms_xx__IsAdv__269AB60B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[GalleryCategory] DROP CONSTRAINT [DF__tmp_ms_xx__IsAdv__269AB60B]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__Category__Slug__222B06A9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Category] DROP CONSTRAINT [DF__Category__Slug__222B06A9]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__tmp_ms_xx__IsPub__7EE1CA6C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AppDraft] DROP CONSTRAINT [DF__tmp_ms_xx__IsPub__7EE1CA6C]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__tmp_ms_xx__IsBlo__7DEDA633]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AppDraft] DROP CONSTRAINT [DF__tmp_ms_xx__IsBlo__7DEDA633]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__tmp_ms_xx__AvgRa__43F60EC8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[App] DROP CONSTRAINT [DF__tmp_ms_xx__AvgRa__43F60EC8]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__tmp_ms_xx__Store__4301EA8F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[App] DROP CONSTRAINT [DF__tmp_ms_xx__Store__4301EA8F]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__tmp_ms_xx__Websi__420DC656]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[App] DROP CONSTRAINT [DF__tmp_ms_xx__Websi__420DC656]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_App_IsPublished]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[App] DROP CONSTRAINT [DF_App_IsPublished]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_App_IsBlocked]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[App] DROP CONSTRAINT [DF_App_IsBlocked]
END

GO
/****** Object:  Index [IX_GalleryCategory]    Script Date: 23-Feb-16 2:39:47 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[GalleryCategory]') AND name = N'IX_GalleryCategory')
DROP INDEX [IX_GalleryCategory] ON [dbo].[GalleryCategory]
GO
/****** Object:  Index [IX_Gallery]    Script Date: 23-Feb-16 2:39:47 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Gallery]') AND name = N'IX_Gallery')
DROP INDEX [IX_Gallery] ON [dbo].[Gallery]
GO
/****** Object:  Index [IX_App_TotalViewCount]    Script Date: 23-Feb-16 2:39:47 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[App]') AND name = N'IX_App_TotalViewCount')
DROP INDEX [IX_App_TotalViewCount] ON [dbo].[App]
GO
/****** Object:  Index [IX_App_1]    Script Date: 23-Feb-16 2:39:47 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[App]') AND name = N'IX_App_1')
DROP INDEX [IX_App_1] ON [dbo].[App]
GO
/****** Object:  Index [URLUnique]    Script Date: 23-Feb-16 2:39:47 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[App]') AND name = N'URLUnique')
ALTER TABLE [dbo].[App] DROP CONSTRAINT [URLUnique]
GO
/****** Object:  Table [dbo].[UserPointSetting]    Script Date: 23-Feb-16 2:39:47 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserPointSetting]') AND type in (N'U'))
DROP TABLE [dbo].[UserPointSetting]
GO
/****** Object:  Table [dbo].[UserPoint]    Script Date: 23-Feb-16 2:39:47 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserPoint]') AND type in (N'U'))
DROP TABLE [dbo].[UserPoint]
GO
/****** Object:  Table [dbo].[User]    Script Date: 23-Feb-16 2:39:47 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User]') AND type in (N'U'))
DROP TABLE [dbo].[User]
GO
/****** Object:  Table [dbo].[TempUpload]    Script Date: 23-Feb-16 2:39:47 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TempUpload]') AND type in (N'U'))
DROP TABLE [dbo].[TempUpload]
GO
/****** Object:  Table [dbo].[TagAppRelation]    Script Date: 23-Feb-16 2:39:47 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TagAppRelation]') AND type in (N'U'))
DROP TABLE [dbo].[TagAppRelation]
GO
/****** Object:  Table [dbo].[Tag]    Script Date: 23-Feb-16 2:39:47 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tag]') AND type in (N'U'))
DROP TABLE [dbo].[Tag]
GO
/****** Object:  Table [dbo].[ReviewLikeDislike]    Script Date: 23-Feb-16 2:39:47 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReviewLikeDislike]') AND type in (N'U'))
DROP TABLE [dbo].[ReviewLikeDislike]
GO
/****** Object:  Table [dbo].[Review]    Script Date: 23-Feb-16 2:39:47 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Review]') AND type in (N'U'))
DROP TABLE [dbo].[Review]
GO
/****** Object:  Table [dbo].[Platform]    Script Date: 23-Feb-16 2:39:47 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Platform]') AND type in (N'U'))
DROP TABLE [dbo].[Platform]
GO
/****** Object:  Table [dbo].[NotificationType]    Script Date: 23-Feb-16 2:39:47 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NotificationType]') AND type in (N'U'))
DROP TABLE [dbo].[NotificationType]
GO
/****** Object:  Table [dbo].[Notification]    Script Date: 23-Feb-16 2:39:47 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Notification]') AND type in (N'U'))
DROP TABLE [dbo].[Notification]
GO
/****** Object:  Table [dbo].[MessageSeen]    Script Date: 23-Feb-16 2:39:47 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MessageSeen]') AND type in (N'U'))
DROP TABLE [dbo].[MessageSeen]
GO
/****** Object:  Table [dbo].[Message]    Script Date: 23-Feb-16 2:39:47 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Message]') AND type in (N'U'))
DROP TABLE [dbo].[Message]
GO
/****** Object:  Table [dbo].[LatestSeenNotification]    Script Date: 23-Feb-16 2:39:47 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LatestSeenNotification]') AND type in (N'U'))
DROP TABLE [dbo].[LatestSeenNotification]
GO
/****** Object:  Table [dbo].[GalleryCategory]    Script Date: 23-Feb-16 2:39:47 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GalleryCategory]') AND type in (N'U'))
DROP TABLE [dbo].[GalleryCategory]
GO
/****** Object:  Table [dbo].[Gallery]    Script Date: 23-Feb-16 2:39:47 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Gallery]') AND type in (N'U'))
DROP TABLE [dbo].[Gallery]
GO
/****** Object:  Table [dbo].[FeaturedImage]    Script Date: 23-Feb-16 2:39:47 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FeaturedImage]') AND type in (N'U'))
DROP TABLE [dbo].[FeaturedImage]
GO
/****** Object:  Table [dbo].[CellPhone]    Script Date: 23-Feb-16 2:39:47 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CellPhone]') AND type in (N'U'))
DROP TABLE [dbo].[CellPhone]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 23-Feb-16 2:39:47 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category]') AND type in (N'U'))
DROP TABLE [dbo].[Category]
GO
/****** Object:  Table [dbo].[AppDraft]    Script Date: 23-Feb-16 2:39:47 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AppDraft]') AND type in (N'U'))
DROP TABLE [dbo].[AppDraft]
GO
/****** Object:  Table [dbo].[App]    Script Date: 23-Feb-16 2:39:47 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[App]') AND type in (N'U'))
DROP TABLE [dbo].[App]
GO
/****** Object:  UserDefinedFunction [dbo].[SplitString]    Script Date: 23-Feb-16 2:39:47 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SplitString]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[SplitString]
GO
/****** Object:  StoredProcedure [dbo].[ResetWholeSystem]    Script Date: 23-Feb-16 2:39:47 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ResetWholeSystem]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ResetWholeSystem]
GO
/****** Object:  StoredProcedure [dbo].[ResetReviews]    Script Date: 23-Feb-16 2:39:47 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ResetReviews]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ResetReviews]
GO
/****** Object:  StoredProcedure [dbo].[ResetAppsAndUsers]    Script Date: 23-Feb-16 2:39:47 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ResetAppsAndUsers]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ResetAppsAndUsers]
GO
/****** Object:  StoredProcedure [dbo].[ResetApps]    Script Date: 23-Feb-16 2:39:47 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ResetApps]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ResetApps]
GO
/****** Object:  StoredProcedure [dbo].[ResetAppDrafts]    Script Date: 23-Feb-16 2:39:47 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ResetAppDrafts]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ResetAppDrafts]
GO
/****** Object:  StoredProcedure [dbo].[AppsSearch]    Script Date: 23-Feb-16 2:39:47 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AppsSearch]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[AppsSearch]
GO
USE [master]
GO
/****** Object:  Database [D:\WORKING\GITHUB\WEREVIEWPROJECT\WEREVIEWAPP\APP_DATA\WEREVIEWAPP.MDF]    Script Date: 23-Feb-16 2:39:47 AM ******/
IF  EXISTS (SELECT name FROM sys.databases WHERE name = N'D:\WORKING\GITHUB\WEREVIEWPROJECT\WEREVIEWAPP\APP_DATA\WEREVIEWAPP.MDF')
DROP DATABASE [D:\WORKING\GITHUB\WEREVIEWPROJECT\WEREVIEWAPP\APP_DATA\WEREVIEWAPP.MDF]
GO
/****** Object:  Database [D:\WORKING\GITHUB\WEREVIEWPROJECT\WEREVIEWAPP\APP_DATA\WEREVIEWAPP.MDF]    Script Date: 23-Feb-16 2:39:47 AM ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'D:\WORKING\GITHUB\WEREVIEWPROJECT\WEREVIEWAPP\APP_DATA\WEREVIEWAPP.MDF')
BEGIN
CREATE DATABASE [D:\WORKING\GITHUB\WEREVIEWPROJECT\WEREVIEWAPP\APP_DATA\WEREVIEWAPP.MDF] ON  PRIMARY 
( NAME = N'WereViewApp', FILENAME = N'D:\Working\GitHub\WereViewProject\WereViewApp\App_Data\WereViewApp.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WereViewApp_log', FILENAME = N'D:\Working\GitHub\WereViewProject\WereViewApp\App_Data\WereViewApp_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
END

GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [D:\WORKING\GITHUB\WEREVIEWPROJECT\WEREVIEWAPP\APP_DATA\WEREVIEWAPP.MDF].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [D:\WORKING\GITHUB\WEREVIEWPROJECT\WEREVIEWAPP\APP_DATA\WEREVIEWAPP.MDF] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [D:\WORKING\GITHUB\WEREVIEWPROJECT\WEREVIEWAPP\APP_DATA\WEREVIEWAPP.MDF] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [D:\WORKING\GITHUB\WEREVIEWPROJECT\WEREVIEWAPP\APP_DATA\WEREVIEWAPP.MDF] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [D:\WORKING\GITHUB\WEREVIEWPROJECT\WEREVIEWAPP\APP_DATA\WEREVIEWAPP.MDF] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [D:\WORKING\GITHUB\WEREVIEWPROJECT\WEREVIEWAPP\APP_DATA\WEREVIEWAPP.MDF] SET ARITHABORT OFF 
GO
ALTER DATABASE [D:\WORKING\GITHUB\WEREVIEWPROJECT\WEREVIEWAPP\APP_DATA\WEREVIEWAPP.MDF] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [D:\WORKING\GITHUB\WEREVIEWPROJECT\WEREVIEWAPP\APP_DATA\WEREVIEWAPP.MDF] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [D:\WORKING\GITHUB\WEREVIEWPROJECT\WEREVIEWAPP\APP_DATA\WEREVIEWAPP.MDF] SET AUTO_SHRINK ON 
GO
ALTER DATABASE [D:\WORKING\GITHUB\WEREVIEWPROJECT\WEREVIEWAPP\APP_DATA\WEREVIEWAPP.MDF] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [D:\WORKING\GITHUB\WEREVIEWPROJECT\WEREVIEWAPP\APP_DATA\WEREVIEWAPP.MDF] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [D:\WORKING\GITHUB\WEREVIEWPROJECT\WEREVIEWAPP\APP_DATA\WEREVIEWAPP.MDF] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [D:\WORKING\GITHUB\WEREVIEWPROJECT\WEREVIEWAPP\APP_DATA\WEREVIEWAPP.MDF] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [D:\WORKING\GITHUB\WEREVIEWPROJECT\WEREVIEWAPP\APP_DATA\WEREVIEWAPP.MDF] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [D:\WORKING\GITHUB\WEREVIEWPROJECT\WEREVIEWAPP\APP_DATA\WEREVIEWAPP.MDF] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [D:\WORKING\GITHUB\WEREVIEWPROJECT\WEREVIEWAPP\APP_DATA\WEREVIEWAPP.MDF] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [D:\WORKING\GITHUB\WEREVIEWPROJECT\WEREVIEWAPP\APP_DATA\WEREVIEWAPP.MDF] SET  DISABLE_BROKER 
GO
ALTER DATABASE [D:\WORKING\GITHUB\WEREVIEWPROJECT\WEREVIEWAPP\APP_DATA\WEREVIEWAPP.MDF] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [D:\WORKING\GITHUB\WEREVIEWPROJECT\WEREVIEWAPP\APP_DATA\WEREVIEWAPP.MDF] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [D:\WORKING\GITHUB\WEREVIEWPROJECT\WEREVIEWAPP\APP_DATA\WEREVIEWAPP.MDF] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [D:\WORKING\GITHUB\WEREVIEWPROJECT\WEREVIEWAPP\APP_DATA\WEREVIEWAPP.MDF] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [D:\WORKING\GITHUB\WEREVIEWPROJECT\WEREVIEWAPP\APP_DATA\WEREVIEWAPP.MDF] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [D:\WORKING\GITHUB\WEREVIEWPROJECT\WEREVIEWAPP\APP_DATA\WEREVIEWAPP.MDF] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [D:\WORKING\GITHUB\WEREVIEWPROJECT\WEREVIEWAPP\APP_DATA\WEREVIEWAPP.MDF] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [D:\WORKING\GITHUB\WEREVIEWPROJECT\WEREVIEWAPP\APP_DATA\WEREVIEWAPP.MDF] SET RECOVERY FULL 
GO
ALTER DATABASE [D:\WORKING\GITHUB\WEREVIEWPROJECT\WEREVIEWAPP\APP_DATA\WEREVIEWAPP.MDF] SET  MULTI_USER 
GO
ALTER DATABASE [D:\WORKING\GITHUB\WEREVIEWPROJECT\WEREVIEWAPP\APP_DATA\WEREVIEWAPP.MDF] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [D:\WORKING\GITHUB\WEREVIEWPROJECT\WEREVIEWAPP\APP_DATA\WEREVIEWAPP.MDF] SET DB_CHAINING OFF 
GO
USE [D:\WORKING\GITHUB\WEREVIEWPROJECT\WEREVIEWAPP\APP_DATA\WEREVIEWAPP.MDF]
GO
/****** Object:  StoredProcedure [dbo].[AppsSearch]    Script Date: 23-Feb-16 2:39:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AppsSearch]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Alim Ul Karim
-- Create date: 
-- Description:	Search for apps
-- =============================================
CREATE PROCEDURE [dbo].[AppsSearch] 
	-- Add the parameters for the stored procedure here
      @SearchText VARCHAR(200) = 0
AS 
      BEGIN
	
            SET NOCOUNT ON;
            SELECT  *
            FROM    SplitString(''Querying SQL Server'', '' '');
      END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[ResetAppDrafts]    Script Date: 23-Feb-16 2:39:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ResetAppDrafts]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ResetAppDrafts]
AS 
      DELETE    FROM AppDraft;
      DBCC checkident (''AppDraft'', reseed, 0);
      RETURN 0' 
END
GO
/****** Object:  StoredProcedure [dbo].[ResetApps]    Script Date: 23-Feb-16 2:39:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ResetApps]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ResetApps]
AS 
      DELETE    FROM ReviewLikeDislike;
      DELETE    FROM Review;

      DBCC checkident (''Review'', reseed, 0);
      DBCC checkident (''ReviewLikeDislike'', reseed, 0);

      DELETE    FROM TagAppRelation;
      DELETE    FROM FeaturedImage;
      DELETE    FROM Tag;
      DELETE    FROM TempUpload;
      DELETE    FROM Review;
      DELETE    FROM Gallery;
      DELETE    FROM AppDraft;
      DELETE    FROM App;
      DELETE    FROM [User];
      DBCC checkident (''App'', reseed, 0);
      DBCC checkident (''AppDraft'', reseed, 0);
      DBCC checkident (''Tag'', reseed, 0);
      DBCC checkident (''TagAppRelation'', reseed, 0);
      DBCC checkident (''TempUpload'', reseed, 0);
      DBCC checkident (''Review'', reseed, 0);
      DBCC checkident (''Gallery'', reseed, 0);
      DBCC checkident (''[User]'', reseed, 0);
      DBCC checkident (''FeaturedImage'', reseed, 0);

	
      RETURN 0' 
END
GO
/****** Object:  StoredProcedure [dbo].[ResetAppsAndUsers]    Script Date: 23-Feb-16 2:39:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ResetAppsAndUsers]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ResetAppsAndUsers]
AS 
      DELETE    FROM App;	
      DELETE    FROM [User];	
		
      DBCC checkident(''App'', reseed, 0);
      DBCC checkident(''[User]'', reseed, 0);
      RETURN 0' 
END
GO
/****** Object:  StoredProcedure [dbo].[ResetReviews]    Script Date: 23-Feb-16 2:39:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ResetReviews]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ResetReviews]
AS 
      DELETE    FROM ReviewLikeDislike;
      DELETE    FROM Review;

      DBCC checkident (''Review'', reseed, 0);
      DBCC checkident (''ReviewLikeDislike'', reseed, 0);
      RETURN 0' 
END
GO
/****** Object:  StoredProcedure [dbo].[ResetWholeSystem]    Script Date: 23-Feb-16 2:39:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ResetWholeSystem]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ResetWholeSystem]
AS 
      BEGIN

            TRUNCATE TABLE dbo.MessageSeen;
            TRUNCATE TABLE LatestSeenNotification;
            TRUNCATE TABLE dbo.[Message];
            TRUNCATE TABLE dbo.UserPoint;

            DBCC checkident (''[MessageSeen]'', reseed, 0);
            DBCC checkident (''[LatestSeenNotification]'', reseed, 0);
            DBCC checkident (''[Message]'', reseed, 0);
            DBCC checkident (''[UserPoint]'', reseed, 0);

            EXEC dbo.ResetApps; -- removes reviews, apps, Tag,TagAppRelation,TempUpload,Gallery,User,FeaturedImage

      END' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[SplitString]    Script Date: 23-Feb-16 2:39:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SplitString]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Alim Ul Karim
-- Create date: 20 Sep 2014
-- Description:	
-- =============================================
CREATE FUNCTION [dbo].[SplitString]( @stringToSplit VARCHAR(200),@splitChar VARCHAR(1) )
RETURNS
 @returnList TABLE (ID int,[Name] [nvarchar] (500))
AS
BEGIN

 DECLARE @name NVARCHAR(255)
 DECLARE @pos INT
 DECLARE @i INT
 SELECT  @i = 0
 WHILE CHARINDEX(@splitChar, @stringToSplit) > 0
 BEGIN
 
  SELECT @pos  = CHARINDEX(@splitChar, @stringToSplit)  ;
  SELECT @name = SUBSTRING(@stringToSplit, 1, @pos-1);
  
  

  INSERT INTO @returnList 
  SELECT  @i,@name;
  
  SELECT @i =@i + 1;

  SELECT @stringToSplit = SUBSTRING(@stringToSplit, @pos+1, LEN(@stringToSplit)-@pos)
 END

 INSERT INTO @returnList
 SELECT @i,@stringToSplit

 RETURN
END
' 
END

GO
/****** Object:  Table [dbo].[App]    Script Date: 23-Feb-16 2:39:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[App]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[App](
	[AppID] [bigint] IDENTITY(1,1) NOT NULL,
	[AppName] [varchar](60) NOT NULL,
	[PlatformID] [tinyint] NOT NULL,
	[PlatformVersion] [float] NOT NULL,
	[CategoryID] [smallint] NOT NULL,
	[Url] [varchar](70) NOT NULL,
	[Description] [nvarchar](2000) NOT NULL,
	[PostedByUserID] [bigint] NOT NULL,
	[ReviewsCount] [smallint] NOT NULL,
	[IsVideoExist] [bit] NOT NULL,
	[YoutubeEmbedLink] [varchar](255) NULL,
	[WebsiteUrl] [nvarchar](255) NULL,
	[StoreUrl] [nvarchar](255) NULL,
	[IsBlocked] [bit] NOT NULL,
	[IsPublished] [bit] NOT NULL,
	[UploadGuid] [uniqueidentifier] NOT NULL,
	[TotalViewed] [bigint] NOT NULL,
	[WebsiteClicked] [bigint] NOT NULL,
	[StoreClicked] [bigint] NOT NULL,
	[AvgRating] [float] NOT NULL,
	[ReleaseDate] [date] NOT NULL,
	[CreatedDate] [date] NOT NULL,
	[LastModifiedDate] [date] NULL,
	[UrlWithoutEscapseSequence] [varchar](70) NOT NULL,
 CONSTRAINT [PK_App] PRIMARY KEY CLUSTERED 
(
	[AppID] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AppDraft]    Script Date: 23-Feb-16 2:39:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AppDraft]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AppDraft](
	[AppDraftID] [bigint] IDENTITY(1,1) NOT NULL,
	[AppName] [varchar](60) NULL,
	[PlatformID] [tinyint] NOT NULL,
	[CategoryID] [smallint] NOT NULL,
	[Description] [nvarchar](2000) NULL,
	[PostedByUserID] [bigint] NOT NULL,
	[ReviewsCount] [smallint] NULL,
	[IsVideoExist] [bit] NULL,
	[YoutubeEmbedLink] [varchar](255) NULL,
	[WebsiteUrl] [nvarchar](255) NULL,
	[StoreUrl] [nvarchar](255) NULL,
	[IsBlocked] [bit] NULL,
	[IsPublished] [bit] NULL,
	[PlatformVersion] [float] NULL,
	[UploadGuid] [uniqueidentifier] NOT NULL,
	[TotalViewed] [bigint] NULL,
	[Url] [varchar](65) NULL,
	[ReleaseDate] [date] NULL,
 CONSTRAINT [PK_AppDraft] PRIMARY KEY CLUSTERED 
(
	[AppDraftID] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Category]    Script Date: 23-Feb-16 2:39:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Category](
	[CategoryID] [smallint] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](40) NOT NULL,
	[Slug] [varchar](40) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CellPhone]    Script Date: 23-Feb-16 2:39:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CellPhone]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CellPhone](
	[CellPhoneID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserID] [bigint] NOT NULL,
	[PlatformID] [tinyint] NOT NULL,
	[PlatformVersion] [float] NOT NULL,
 CONSTRAINT [PK_CellPhone] PRIMARY KEY CLUSTERED 
(
	[CellPhoneID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[FeaturedImage]    Script Date: 23-Feb-16 2:39:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FeaturedImage]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FeaturedImage](
	[FeaturedImageID] [bigint] IDENTITY(1,1) NOT NULL,
	[AppID] [bigint] NOT NULL,
	[IsFeatured] [bit] NOT NULL,
	[UserID] [bigint] NOT NULL,
 CONSTRAINT [PK_FeaturedImage] PRIMARY KEY CLUSTERED 
(
	[FeaturedImageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Gallery]    Script Date: 23-Feb-16 2:39:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Gallery]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Gallery](
	[GalleryID] [uniqueidentifier] NOT NULL,
	[UploadGuid] [uniqueidentifier] NOT NULL,
	[GalleryCategoryID] [int] NOT NULL,
	[Sequence] [tinyint] NOT NULL,
	[Title] [varchar](50) NULL,
	[Subtitle] [varchar](150) NULL,
	[Extension] [varchar](5) NOT NULL,
 CONSTRAINT [PK_Gallery] PRIMARY KEY CLUSTERED 
(
	[GalleryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GalleryCategory]    Script Date: 23-Feb-16 2:39:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GalleryCategory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[GalleryCategory](
	[GalleryCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](50) NOT NULL,
	[Width] [float] NOT NULL,
	[Height] [float] NOT NULL,
	[IsAdvertise] [bit] NOT NULL,
 CONSTRAINT [PK_GalleryCategory] PRIMARY KEY CLUSTERED 
(
	[GalleryCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LatestSeenNotification]    Script Date: 23-Feb-16 2:39:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LatestSeenNotification]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LatestSeenNotification](
	[LatestSeenNotificationID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserID] [bigint] NOT NULL,
	[NotificationTypeID] [tinyint] NOT NULL,
	[Message] [varchar](50) NULL,
	[Dated] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_LatestSeenNotification] PRIMARY KEY CLUSTERED 
(
	[LatestSeenNotificationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Message]    Script Date: 23-Feb-16 2:39:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Message]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Message](
	[MessageID] [bigint] IDENTITY(1,1) NOT NULL,
	[Msg1] [varchar](300) NOT NULL,
	[Msg2] [varchar](300) NULL,
	[Msg3] [varchar](300) NULL,
	[Msg4] [varchar](300) NULL,
	[MessageDisplay]  AS (concat([Msg1],[Msg2],[Msg3],[Msg4])),
	[SenderUserID] [bigint] NOT NULL,
	[ReceiverUserID] [bigint] NOT NULL,
	[IsDraft] [bit] NOT NULL,
	[LastModified] [smalldatetime] NOT NULL,
	[SentDate] [smalldatetime] NOT NULL,
	[ReceivedDate] [smalldatetime] NULL,
	[IsReceived] [bit] NOT NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[MessageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MessageSeen]    Script Date: 23-Feb-16 2:39:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MessageSeen]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MessageSeen](
	[MessageSeenID] [bigint] IDENTITY(1,1) NOT NULL,
	[Msg1] [varchar](300) NOT NULL,
	[Msg2] [varchar](300) NULL,
	[Msg3] [varchar](300) NULL,
	[Msg4] [varchar](300) NULL,
	[MessageDisplay]  AS (concat([Msg1],[Msg2],[Msg3],[Msg4])),
	[SenderUserID] [bigint] NOT NULL,
	[ReceiverUserID] [bigint] NOT NULL,
	[IsDraft] [bit] NOT NULL,
	[LastModified] [smalldatetime] NOT NULL,
	[SentDate] [smalldatetime] NOT NULL,
	[ReceivedDate] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_MessageSeen] PRIMARY KEY CLUSTERED 
(
	[MessageSeenID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Notification]    Script Date: 23-Feb-16 2:39:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Notification]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Notification](
	[NotificationID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserID] [bigint] NOT NULL,
	[NotificationTypeID] [tinyint] NOT NULL,
	[Message] [varchar](50) NULL,
	[Dated] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_Notification] PRIMARY KEY CLUSTERED 
(
	[NotificationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NotificationType]    Script Date: 23-Feb-16 2:39:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NotificationType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[NotificationType](
	[NotificationTypeID] [tinyint] IDENTITY(1,1) NOT NULL,
	[TypeName] [varchar](50) NOT NULL,
	[IsGood] [bit] NOT NULL,
	[DefaultMessage] [varchar](30) NOT NULL,
 CONSTRAINT [PK_NotificationType] PRIMARY KEY CLUSTERED 
(
	[NotificationTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Platform]    Script Date: 23-Feb-16 2:39:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Platform]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Platform](
	[PlatformID] [tinyint] IDENTITY(1,1) NOT NULL,
	[PlatformName] [varchar](40) NOT NULL,
	[Icon] [varchar](50) NULL,
 CONSTRAINT [PK_Platform] PRIMARY KEY CLUSTERED 
(
	[PlatformID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Review]    Script Date: 23-Feb-16 2:39:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Review]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Review](
	[ReviewID] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](30) NOT NULL,
	[Pros] [varchar](300) NULL,
	[Cons] [varchar](300) NULL,
	[IsSuggest] [bit] NOT NULL,
	[Comment1] [varchar](100) NOT NULL,
	[Comment2] [varchar](500) NULL,
	[AppID] [bigint] NOT NULL,
	[UserID] [bigint] NOT NULL,
	[Comments]  AS (concat([Comment1],[Comment2])),
	[LikedCount] [int] NOT NULL,
	[DisLikeCount] [int] NOT NULL,
	[Rating] [tinyint] NOT NULL,
	[CreatedDate] [date] NOT NULL,
 CONSTRAINT [PK_Review] PRIMARY KEY CLUSTERED 
(
	[ReviewID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ReviewLikeDislike]    Script Date: 23-Feb-16 2:39:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReviewLikeDislike]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ReviewLikeDislike](
	[ReviewLikeDislikeID] [bigint] IDENTITY(1,1) NOT NULL,
	[ReviewID] [bigint] NOT NULL,
	[UserID] [bigint] NOT NULL,
	[IsLiked] [bit] NOT NULL,
	[IsDisliked] [bit] NOT NULL,
	[IsNone] [bit] NOT NULL,
 CONSTRAINT [PK_ReviewLikeDislike] PRIMARY KEY CLUSTERED 
(
	[ReviewLikeDislikeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Tag]    Script Date: 23-Feb-16 2:39:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tag]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Tag](
	[TagID] [bigint] IDENTITY(1,1) NOT NULL,
	[TagDisplay] [nvarchar](40) NOT NULL,
 CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED 
(
	[TagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TagAppRelation]    Script Date: 23-Feb-16 2:39:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TagAppRelation]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TagAppRelation](
	[TagAppRelationID] [bigint] IDENTITY(1,1) NOT NULL,
	[TagID] [bigint] NOT NULL,
	[AppID] [bigint] NOT NULL,
 CONSTRAINT [PK_TagAppRelation] PRIMARY KEY CLUSTERED 
(
	[TagAppRelationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TempUpload]    Script Date: 23-Feb-16 2:39:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TempUpload]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TempUpload](
	[TempUploadID] [uniqueidentifier] NOT NULL,
	[UserID] [bigint] NOT NULL,
	[AppID] [bigint] NULL,
	[GalleryID] [uniqueidentifier] NOT NULL,
	[RelatingUploadGuidForDelete] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[TempUploadID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[User]    Script Date: 23-Feb-16 2:39:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[User](
	[UserID] [bigint] NOT NULL,
	[FirstName] [varchar](30) NOT NULL,
	[LastName] [varchar](30) NOT NULL,
	[Phone] [varchar](18) NULL,
	[UserName] [varchar](30) NOT NULL,
	[TotalEarnedPoints] [bigint] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserPoint]    Script Date: 23-Feb-16 2:39:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserPoint]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserPoint](
	[UserPointID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserID] [bigint] NOT NULL,
	[Point] [int] NOT NULL,
	[UserPointSettingID] [tinyint] NOT NULL,
	[Dated] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_UserPoint] PRIMARY KEY CLUSTERED 
(
	[UserPointID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[UserPointSetting]    Script Date: 23-Feb-16 2:39:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserPointSetting]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserPointSetting](
	[UserPointSettingID] [tinyint] IDENTITY(1,1) NOT NULL,
	[TaskName] [varchar](50) NOT NULL,
	[Point] [int] NOT NULL,
 CONSTRAINT [PK_UserPointSetting] PRIMARY KEY CLUSTERED 
(
	[UserPointSettingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[App] ON 

INSERT [dbo].[App] ([AppID], [AppName], [PlatformID], [PlatformVersion], [CategoryID], [Url], [Description], [PostedByUserID], [ReviewsCount], [IsVideoExist], [YoutubeEmbedLink], [WebsiteUrl], [StoreUrl], [IsBlocked], [IsPublished], [UploadGuid], [TotalViewed], [WebsiteClicked], [StoreClicked], [AvgRating], [ReleaseDate], [CreatedDate], [LastModifiedDate], [UrlWithoutEscapseSequence]) VALUES (16, N'Adwdw', 1, 0, 1, N'adwdw', N'dqwwqdqwd', 8, 0, 0, N'[iframe width="420" height="315" src="https://www.youtube.com/embed/e7Yj6vLyYOI" frameborder="0" allowfullscreen][/iframe]', NULL, NULL, 0, 1, N'1e86ed90-0bb1-46b5-9524-a8a9815daabc', 8, 0, 0, 0, CAST(0xBF3A0B00 AS Date), CAST(0xBF3A0B00 AS Date), CAST(0xBF3A0B00 AS Date), N'adwdw')
INSERT [dbo].[App] ([AppID], [AppName], [PlatformID], [PlatformVersion], [CategoryID], [Url], [Description], [PostedByUserID], [ReviewsCount], [IsVideoExist], [YoutubeEmbedLink], [WebsiteUrl], [StoreUrl], [IsBlocked], [IsPublished], [UploadGuid], [TotalViewed], [WebsiteClicked], [StoreClicked], [AvgRating], [ReleaseDate], [CreatedDate], [LastModifiedDate], [UrlWithoutEscapseSequence]) VALUES (15, N'Hello World', 3, 12, 1, N'hello-world', N'Hello WorldHello WorldHello WorldHello WorldHello WorldHello World', 7, 0, 0, NULL, NULL, NULL, 0, 1, N'6f363a57-2094-4d3a-9252-ae2e2a76a97b', 7, 0, 0, 0, CAST(0xAE3A0B00 AS Date), CAST(0xAE3A0B00 AS Date), CAST(0xAE3A0B00 AS Date), N'world')
INSERT [dbo].[App] ([AppID], [AppName], [PlatformID], [PlatformVersion], [CategoryID], [Url], [Description], [PostedByUserID], [ReviewsCount], [IsVideoExist], [YoutubeEmbedLink], [WebsiteUrl], [StoreUrl], [IsBlocked], [IsPublished], [UploadGuid], [TotalViewed], [WebsiteClicked], [StoreClicked], [AvgRating], [ReleaseDate], [CreatedDate], [LastModifiedDate], [UrlWithoutEscapseSequence]) VALUES (14, N'Sample App', 2, 0, 1, N'sample-app-2-2', N'Sample App', 1, 1, 0, NULL, NULL, NULL, 0, 1, N'0598bc1d-9b8e-4634-8bb6-31942a7ad68a', 17, 0, 0, 5, CAST(0x7D3A0B00 AS Date), CAST(0x7D3A0B00 AS Date), CAST(0x7D3A0B00 AS Date), N'sample-app')
INSERT [dbo].[App] ([AppID], [AppName], [PlatformID], [PlatformVersion], [CategoryID], [Url], [Description], [PostedByUserID], [ReviewsCount], [IsVideoExist], [YoutubeEmbedLink], [WebsiteUrl], [StoreUrl], [IsBlocked], [IsPublished], [UploadGuid], [TotalViewed], [WebsiteClicked], [StoreClicked], [AvgRating], [ReleaseDate], [CreatedDate], [LastModifiedDate], [UrlWithoutEscapseSequence]) VALUES (13, N'Sample App', 2, 0, 1, N'sample-app-2', N'Sample App', 1, 0, 0, NULL, NULL, NULL, 0, 0, N'0f759dc0-b939-480e-82a5-6133aa3bcc3d', 0, 0, 0, 0, CAST(0x7D3A0B00 AS Date), CAST(0x7D3A0B00 AS Date), CAST(0x7D3A0B00 AS Date), N'sample-app')
INSERT [dbo].[App] ([AppID], [AppName], [PlatformID], [PlatformVersion], [CategoryID], [Url], [Description], [PostedByUserID], [ReviewsCount], [IsVideoExist], [YoutubeEmbedLink], [WebsiteUrl], [StoreUrl], [IsBlocked], [IsPublished], [UploadGuid], [TotalViewed], [WebsiteClicked], [StoreClicked], [AvgRating], [ReleaseDate], [CreatedDate], [LastModifiedDate], [UrlWithoutEscapseSequence]) VALUES (12, N'Sample App', 2, 0, 1, N'sample-app', N'Sample App', 1, 0, 0, NULL, NULL, NULL, 0, 0, N'fa1595d4-da44-4205-b3dd-6b6e524866d0', 0, 0, 0, 0, CAST(0x7D3A0B00 AS Date), CAST(0x7D3A0B00 AS Date), CAST(0x7D3A0B00 AS Date), N'sample-app')
INSERT [dbo].[App] ([AppID], [AppName], [PlatformID], [PlatformVersion], [CategoryID], [Url], [Description], [PostedByUserID], [ReviewsCount], [IsVideoExist], [YoutubeEmbedLink], [WebsiteUrl], [StoreUrl], [IsBlocked], [IsPublished], [UploadGuid], [TotalViewed], [WebsiteClicked], [StoreClicked], [AvgRating], [ReleaseDate], [CreatedDate], [LastModifiedDate], [UrlWithoutEscapseSequence]) VALUES (11, N'Lets add new app', 1, 0, 1, N'lets-add-new-app', N'Lets add new app', 1, 0, 0, NULL, NULL, NULL, 0, 1, N'c69c1955-287a-44f9-8211-5d3e1d6a1c9c', 11, 0, 0, 0, CAST(0x5D3A0B00 AS Date), CAST(0x5D3A0B00 AS Date), CAST(0x5D3A0B00 AS Date), N'lets-add-app')
INSERT [dbo].[App] ([AppID], [AppName], [PlatformID], [PlatformVersion], [CategoryID], [Url], [Description], [PostedByUserID], [ReviewsCount], [IsVideoExist], [YoutubeEmbedLink], [WebsiteUrl], [StoreUrl], [IsBlocked], [IsPublished], [UploadGuid], [TotalViewed], [WebsiteClicked], [StoreClicked], [AvgRating], [ReleaseDate], [CreatedDate], [LastModifiedDate], [UrlWithoutEscapseSequence]) VALUES (10, N'new example app 2', 1, 4.9, 3, N'new-example-app-2-2', N'new example app 2 new example app 2', 1, 0, 0, NULL, NULL, NULL, 0, 1, N'e94520fd-50d7-43e2-95f4-699e2e156806', 16, 0, 0, 0, CAST(0x5B3A0B00 AS Date), CAST(0x5B3A0B00 AS Date), CAST(0x5B3A0B00 AS Date), N'example-app')
INSERT [dbo].[App] ([AppID], [AppName], [PlatformID], [PlatformVersion], [CategoryID], [Url], [Description], [PostedByUserID], [ReviewsCount], [IsVideoExist], [YoutubeEmbedLink], [WebsiteUrl], [StoreUrl], [IsBlocked], [IsPublished], [UploadGuid], [TotalViewed], [WebsiteClicked], [StoreClicked], [AvgRating], [ReleaseDate], [CreatedDate], [LastModifiedDate], [UrlWithoutEscapseSequence]) VALUES (9, N'new example app 2', 1, 4.9, 3, N'new-example-app-2', N'new example app 2 new example app 2', 1, 0, 0, NULL, NULL, NULL, 0, 1, N'55d3b71c-cafe-4f68-a2e8-32a8df8f922c', 6, 0, 0, 0, CAST(0x5B3A0B00 AS Date), CAST(0x5B3A0B00 AS Date), CAST(0x5B3A0B00 AS Date), N'example-app')
INSERT [dbo].[App] ([AppID], [AppName], [PlatformID], [PlatformVersion], [CategoryID], [Url], [Description], [PostedByUserID], [ReviewsCount], [IsVideoExist], [YoutubeEmbedLink], [WebsiteUrl], [StoreUrl], [IsBlocked], [IsPublished], [UploadGuid], [TotalViewed], [WebsiteClicked], [StoreClicked], [AvgRating], [ReleaseDate], [CreatedDate], [LastModifiedDate], [UrlWithoutEscapseSequence]) VALUES (8, N'new app example', 2, 4.8, 2, N'new-app-example', N'new app example', 1, 0, 0, NULL, NULL, NULL, 0, 1, N'53be2a3e-8cff-49c7-88b4-158b252969b2', 3, 0, 0, 0, CAST(0x5B3A0B00 AS Date), CAST(0x00000000 AS Date), CAST(0x5B3A0B00 AS Date), N'app-example')
INSERT [dbo].[App] ([AppID], [AppName], [PlatformID], [PlatformVersion], [CategoryID], [Url], [Description], [PostedByUserID], [ReviewsCount], [IsVideoExist], [YoutubeEmbedLink], [WebsiteUrl], [StoreUrl], [IsBlocked], [IsPublished], [UploadGuid], [TotalViewed], [WebsiteClicked], [StoreClicked], [AvgRating], [ReleaseDate], [CreatedDate], [LastModifiedDate], [UrlWithoutEscapseSequence]) VALUES (7, N'wwdwdq', 1, 0, 10, N'wwdwdq', N'dwqwqd', 1, 0, 0, NULL, NULL, NULL, 0, 1, N'89aa4dd9-d8e8-4fd4-9af7-36fc110d5188', 7, 0, 0, 0, CAST(0xE4390B00 AS Date), CAST(0x00000000 AS Date), CAST(0x5B3A0B00 AS Date), N'wwdwdq')
INSERT [dbo].[App] ([AppID], [AppName], [PlatformID], [PlatformVersion], [CategoryID], [Url], [Description], [PostedByUserID], [ReviewsCount], [IsVideoExist], [YoutubeEmbedLink], [WebsiteUrl], [StoreUrl], [IsBlocked], [IsPublished], [UploadGuid], [TotalViewed], [WebsiteClicked], [StoreClicked], [AvgRating], [ReleaseDate], [CreatedDate], [LastModifiedDate], [UrlWithoutEscapseSequence]) VALUES (6, N'Sample App 5', 3, 8.1, 1, N'sample-app-5', N'Sample App 5', 1, 0, 0, NULL, NULL, NULL, 0, 0, N'289bdd3e-b146-4614-b3ee-9df0562e2273', 0, 0, 0, 0, CAST(0xD6390B00 AS Date), CAST(0xD6390B00 AS Date), CAST(0xD6390B00 AS Date), N'sample-app')
INSERT [dbo].[App] ([AppID], [AppName], [PlatformID], [PlatformVersion], [CategoryID], [Url], [Description], [PostedByUserID], [ReviewsCount], [IsVideoExist], [YoutubeEmbedLink], [WebsiteUrl], [StoreUrl], [IsBlocked], [IsPublished], [UploadGuid], [TotalViewed], [WebsiteClicked], [StoreClicked], [AvgRating], [ReleaseDate], [CreatedDate], [LastModifiedDate], [UrlWithoutEscapseSequence]) VALUES (5, N'Sample 3', 3, 8, 1, N'sample-3', N'Sample 3', 1, 0, 0, NULL, NULL, NULL, 0, 0, N'5dc57933-5c3d-4b94-9d30-0a311418037e', 0, 0, 0, 0, CAST(0xD6390B00 AS Date), CAST(0xD6390B00 AS Date), CAST(0xD6390B00 AS Date), N'sample')
INSERT [dbo].[App] ([AppID], [AppName], [PlatformID], [PlatformVersion], [CategoryID], [Url], [Description], [PostedByUserID], [ReviewsCount], [IsVideoExist], [YoutubeEmbedLink], [WebsiteUrl], [StoreUrl], [IsBlocked], [IsPublished], [UploadGuid], [TotalViewed], [WebsiteClicked], [StoreClicked], [AvgRating], [ReleaseDate], [CreatedDate], [LastModifiedDate], [UrlWithoutEscapseSequence]) VALUES (4, N'Sample App 2', 2, 4, 2, N'sample-app-2', N'Sample, App, Sample AppSample, App, Sample AppSample, App, Sample AppSample, App, Sample App', 1, 1, 0, NULL, NULL, NULL, 0, 1, N'0dc17da2-10bc-4c15-a172-0b0ef7bb9e39', 254, 0, 0, 3, CAST(0xDC390B00 AS Date), CAST(0x00000000 AS Date), CAST(0xDB390B00 AS Date), N'sample-app')
INSERT [dbo].[App] ([AppID], [AppName], [PlatformID], [PlatformVersion], [CategoryID], [Url], [Description], [PostedByUserID], [ReviewsCount], [IsVideoExist], [YoutubeEmbedLink], [WebsiteUrl], [StoreUrl], [IsBlocked], [IsPublished], [UploadGuid], [TotalViewed], [WebsiteClicked], [StoreClicked], [AvgRating], [ReleaseDate], [CreatedDate], [LastModifiedDate], [UrlWithoutEscapseSequence]) VALUES (3, N'Plant VS Zombies 2', 1, 8, 1, N'plant-vs-zombies-2', N'A mob of fun-loving zombies is about to invade your home, and your only defense is an arsenal of 49 zombie-zapping plants. Use Peashooters, Wall-nuts, Cherry Bombs and more to slow down, confuse, weaken and mulchify 26 types of zombies before they can reach your front door. Each zombie has its own special skills, so be careful how you use your limited supply of greens and seeds… as you battle the fun-dead, obstacles like a setting sun, creeping fog and a swimming pool add to the challenge.', 1, 1, 0, NULL, N'http://www.popcap.com/plants-vs-zombies', N'http://www.popcap.com/plants-vs-zombies', 0, 1, N'8435a280-7ead-418b-9b63-f29a0816ec7a', 90, 0, 0, 9, CAST(0x3B390B00 AS Date), CAST(0x00000000 AS Date), CAST(0x40390B00 AS Date), N'plant-zombies')
INSERT [dbo].[App] ([AppID], [AppName], [PlatformID], [PlatformVersion], [CategoryID], [Url], [Description], [PostedByUserID], [ReviewsCount], [IsVideoExist], [YoutubeEmbedLink], [WebsiteUrl], [StoreUrl], [IsBlocked], [IsPublished], [UploadGuid], [TotalViewed], [WebsiteClicked], [StoreClicked], [AvgRating], [ReleaseDate], [CreatedDate], [LastModifiedDate], [UrlWithoutEscapseSequence]) VALUES (2, N'Plant VS Zombies', 1, 8, 1, N'plant-vs-zombies', N'A mob of fun-loving zombies is about to invade your home, and your only defense is an arsenal of 49 zombie-zapping plants. Use Peashooters, Wall-nuts, Cherry Bombs and more to slow down, confuse, weaken and mulchify 26 types of zombies before they can reach your front door. Each zombie has its own special skills, so be careful how you use your limited supply of greens and seeds… as you battle the fun-dead, obstacles like a setting sun, creeping fog and a swimming pool add to the challenge.', 1, 1, 0, N'[iframe width="560" height="315" src="//www.youtube.com/embed/6FDTMRK7-24" frameborder="0" allowfullscreen][/iframe]', N'http://www.popcap.com/plants-vs-zombies', N'http://www.popcap.com/plants-vs-zombies', 0, 1, N'45040001-5666-4427-aee6-8ad3b566db51', 101, 0, 0, 4, CAST(0x3B390B00 AS Date), CAST(0x40390B00 AS Date), CAST(0x40390B00 AS Date), N'plant-zombies')
INSERT [dbo].[App] ([AppID], [AppName], [PlatformID], [PlatformVersion], [CategoryID], [Url], [Description], [PostedByUserID], [ReviewsCount], [IsVideoExist], [YoutubeEmbedLink], [WebsiteUrl], [StoreUrl], [IsBlocked], [IsPublished], [UploadGuid], [TotalViewed], [WebsiteClicked], [StoreClicked], [AvgRating], [ReleaseDate], [CreatedDate], [LastModifiedDate], [UrlWithoutEscapseSequence]) VALUES (1, N'Plant VS Zombies', 1, 7, 1, N'plant-vs-zombies', N'A mob of fun-loving zombies is about to invade your home, and your only defense is an arsenal of 49 zombie-zapping plants. Use Peashooters, Wall-nuts, Cherry Bombs and more to slow down, confuse, weaken and mulchify 26 types of zombies before they can reach your front door. Each zombie has its own special skills, so be careful how you use your limited supply of greens and seeds… as you battle the fun-dead, obstacles like a setting sun, creeping fog and a swimming pool add to the challenge.', 1, 0, 0, N'[iframe width="420" height="315" src="//www.youtube.com/embed/ufik9B2xlto" frameborder="0" allowfullscreen][/iframe]', N'http://www.popcap.com/plants-vs-zombies', N'http://www.popcap.com/plants-vs-zombies', 0, 1, N'e40b30a6-4be4-4c49-880e-ce67d8e1a1e7', 61, 0, 0, 0, CAST(0x3B390B00 AS Date), CAST(0x00000000 AS Date), CAST(0xD2390B00 AS Date), N'plant-zombies')
SET IDENTITY_INSERT [dbo].[App] OFF
SET IDENTITY_INSERT [dbo].[AppDraft] ON 

INSERT [dbo].[AppDraft] ([AppDraftID], [AppName], [PlatformID], [CategoryID], [Description], [PostedByUserID], [ReviewsCount], [IsVideoExist], [YoutubeEmbedLink], [WebsiteUrl], [StoreUrl], [IsBlocked], [IsPublished], [PlatformVersion], [UploadGuid], [TotalViewed], [Url], [ReleaseDate]) VALUES (23, NULL, 1, 1, NULL, 7, NULL, 0, NULL, NULL, NULL, 0, 1, 0, N'01b72017-2869-47a8-9980-f04a5870fcff', NULL, NULL, CAST(0xAE3A0B00 AS Date))
INSERT [dbo].[AppDraft] ([AppDraftID], [AppName], [PlatformID], [CategoryID], [Description], [PostedByUserID], [ReviewsCount], [IsVideoExist], [YoutubeEmbedLink], [WebsiteUrl], [StoreUrl], [IsBlocked], [IsPublished], [PlatformVersion], [UploadGuid], [TotalViewed], [Url], [ReleaseDate]) VALUES (22, N'Hello World', 3, 1, N'Hello WorldHello WorldHello WorldHello WorldHello WorldHello World', 7, NULL, 0, NULL, NULL, NULL, 0, 0, 12, N'367dea9a-dd31-434a-8b13-506f0ba36b5f', NULL, N'hello-world-2', CAST(0xAE3A0B00 AS Date))
INSERT [dbo].[AppDraft] ([AppDraftID], [AppName], [PlatformID], [CategoryID], [Description], [PostedByUserID], [ReviewsCount], [IsVideoExist], [YoutubeEmbedLink], [WebsiteUrl], [StoreUrl], [IsBlocked], [IsPublished], [PlatformVersion], [UploadGuid], [TotalViewed], [Url], [ReleaseDate]) VALUES (21, N'dwqwdwqd', 1, 1, NULL, 1, NULL, 0, NULL, NULL, NULL, 0, 0, 23321123, N'35a56a05-1877-4ad2-a6d5-dcb948490911', NULL, N'dwqwdwqd', CAST(0x6D3A0B00 AS Date))
INSERT [dbo].[AppDraft] ([AppDraftID], [AppName], [PlatformID], [CategoryID], [Description], [PostedByUserID], [ReviewsCount], [IsVideoExist], [YoutubeEmbedLink], [WebsiteUrl], [StoreUrl], [IsBlocked], [IsPublished], [PlatformVersion], [UploadGuid], [TotalViewed], [Url], [ReleaseDate]) VALUES (20, N'dwqwqd', 1, 1, NULL, 1, NULL, 0, NULL, NULL, NULL, 0, 0, 0, N'25261509-474c-43c9-826a-3e2d7108a2eb', NULL, N'dwqwqd', CAST(0x6D3A0B00 AS Date))
INSERT [dbo].[AppDraft] ([AppDraftID], [AppName], [PlatformID], [CategoryID], [Description], [PostedByUserID], [ReviewsCount], [IsVideoExist], [YoutubeEmbedLink], [WebsiteUrl], [StoreUrl], [IsBlocked], [IsPublished], [PlatformVersion], [UploadGuid], [TotalViewed], [Url], [ReleaseDate]) VALUES (19, N'weffweewf', 1, 1, NULL, 1, NULL, 0, NULL, NULL, NULL, 0, 0, 0, N'78c7a399-a753-479c-bf71-07de03a3dc33', NULL, N'weffweewf', CAST(0x6D3A0B00 AS Date))
INSERT [dbo].[AppDraft] ([AppDraftID], [AppName], [PlatformID], [CategoryID], [Description], [PostedByUserID], [ReviewsCount], [IsVideoExist], [YoutubeEmbedLink], [WebsiteUrl], [StoreUrl], [IsBlocked], [IsPublished], [PlatformVersion], [UploadGuid], [TotalViewed], [Url], [ReleaseDate]) VALUES (18, N'wqffwq', 1, 1, NULL, 1, NULL, 0, NULL, NULL, NULL, 0, 0, 0, N'2c8766a9-e6fc-44b0-a673-b6ba59b68192', NULL, N'wqffwq', CAST(0x6D3A0B00 AS Date))
INSERT [dbo].[AppDraft] ([AppDraftID], [AppName], [PlatformID], [CategoryID], [Description], [PostedByUserID], [ReviewsCount], [IsVideoExist], [YoutubeEmbedLink], [WebsiteUrl], [StoreUrl], [IsBlocked], [IsPublished], [PlatformVersion], [UploadGuid], [TotalViewed], [Url], [ReleaseDate]) VALUES (17, N'adsdww', 1, 1, NULL, 1, NULL, 0, NULL, NULL, NULL, 0, 0, 0, N'43ef5cc4-95ad-4741-8cb8-7f216b7cad8e', NULL, N'adsdww', CAST(0x6D3A0B00 AS Date))
INSERT [dbo].[AppDraft] ([AppDraftID], [AppName], [PlatformID], [CategoryID], [Description], [PostedByUserID], [ReviewsCount], [IsVideoExist], [YoutubeEmbedLink], [WebsiteUrl], [StoreUrl], [IsBlocked], [IsPublished], [PlatformVersion], [UploadGuid], [TotalViewed], [Url], [ReleaseDate]) VALUES (16, N'wdqqwwqd', 1, 1, NULL, 1, NULL, 0, NULL, NULL, NULL, 0, 0, 0, N'519c8a15-28d3-4294-b059-56c4cbe0aad8', NULL, N'wdqqwwqd', CAST(0x6D3A0B00 AS Date))
INSERT [dbo].[AppDraft] ([AppDraftID], [AppName], [PlatformID], [CategoryID], [Description], [PostedByUserID], [ReviewsCount], [IsVideoExist], [YoutubeEmbedLink], [WebsiteUrl], [StoreUrl], [IsBlocked], [IsPublished], [PlatformVersion], [UploadGuid], [TotalViewed], [Url], [ReleaseDate]) VALUES (15, N'asdw', 1, 1, NULL, 1, NULL, 0, NULL, NULL, NULL, 0, 0, 0, N'68efacb9-c283-4430-a64f-199df9e1da99', NULL, N'asdw', CAST(0x6D3A0B00 AS Date))
INSERT [dbo].[AppDraft] ([AppDraftID], [AppName], [PlatformID], [CategoryID], [Description], [PostedByUserID], [ReviewsCount], [IsVideoExist], [YoutubeEmbedLink], [WebsiteUrl], [StoreUrl], [IsBlocked], [IsPublished], [PlatformVersion], [UploadGuid], [TotalViewed], [Url], [ReleaseDate]) VALUES (14, N'wfefe', 1, 1, NULL, 1, NULL, 0, NULL, NULL, NULL, 0, 0, 0, N'b857d8ff-3f74-4b2b-b271-91767809c64d', NULL, N'wfefe', CAST(0x6D3A0B00 AS Date))
INSERT [dbo].[AppDraft] ([AppDraftID], [AppName], [PlatformID], [CategoryID], [Description], [PostedByUserID], [ReviewsCount], [IsVideoExist], [YoutubeEmbedLink], [WebsiteUrl], [StoreUrl], [IsBlocked], [IsPublished], [PlatformVersion], [UploadGuid], [TotalViewed], [Url], [ReleaseDate]) VALUES (13, N'csasc', 1, 1, NULL, 1, NULL, 0, NULL, NULL, NULL, 0, 0, 0, N'f0dbaf53-eca5-4f8f-82ee-ade4a00b6b00', NULL, N'csasc', CAST(0x6D3A0B00 AS Date))
INSERT [dbo].[AppDraft] ([AppDraftID], [AppName], [PlatformID], [CategoryID], [Description], [PostedByUserID], [ReviewsCount], [IsVideoExist], [YoutubeEmbedLink], [WebsiteUrl], [StoreUrl], [IsBlocked], [IsPublished], [PlatformVersion], [UploadGuid], [TotalViewed], [Url], [ReleaseDate]) VALUES (12, N'dwwww', 1, 1, NULL, 1, NULL, 0, NULL, NULL, NULL, 0, 0, 0, N'f29d5f1d-f147-4bbc-b231-d47398e2d046', NULL, N'dwwww', CAST(0x6D3A0B00 AS Date))
INSERT [dbo].[AppDraft] ([AppDraftID], [AppName], [PlatformID], [CategoryID], [Description], [PostedByUserID], [ReviewsCount], [IsVideoExist], [YoutubeEmbedLink], [WebsiteUrl], [StoreUrl], [IsBlocked], [IsPublished], [PlatformVersion], [UploadGuid], [TotalViewed], [Url], [ReleaseDate]) VALUES (11, N'asdaddw', 1, 1, NULL, 1, NULL, 0, NULL, NULL, NULL, 0, 0, 0, N'e73b8c89-a8d4-42b7-90ed-f115393c24f2', NULL, N'asdaddw', CAST(0x663A0B00 AS Date))
INSERT [dbo].[AppDraft] ([AppDraftID], [AppName], [PlatformID], [CategoryID], [Description], [PostedByUserID], [ReviewsCount], [IsVideoExist], [YoutubeEmbedLink], [WebsiteUrl], [StoreUrl], [IsBlocked], [IsPublished], [PlatformVersion], [UploadGuid], [TotalViewed], [Url], [ReleaseDate]) VALUES (10, N'asdwddwq', 3, 2, NULL, 1, NULL, 0, NULL, NULL, NULL, 0, 0, 23, N'789a72ca-823f-458f-91a2-9b7358fb33d2', NULL, N'asdwddwq', CAST(0x653A0B00 AS Date))
INSERT [dbo].[AppDraft] ([AppDraftID], [AppName], [PlatformID], [CategoryID], [Description], [PostedByUserID], [ReviewsCount], [IsVideoExist], [YoutubeEmbedLink], [WebsiteUrl], [StoreUrl], [IsBlocked], [IsPublished], [PlatformVersion], [UploadGuid], [TotalViewed], [Url], [ReleaseDate]) VALUES (9, N'Lets add new app', 1, 1, N'Lets add new app', 1, NULL, 0, NULL, NULL, NULL, 0, 1, 0, N'98648fe8-8672-43d4-9767-2869c12e14da', NULL, N'lets-add-new-app-2', CAST(0x5D3A0B00 AS Date))
INSERT [dbo].[AppDraft] ([AppDraftID], [AppName], [PlatformID], [CategoryID], [Description], [PostedByUserID], [ReviewsCount], [IsVideoExist], [YoutubeEmbedLink], [WebsiteUrl], [StoreUrl], [IsBlocked], [IsPublished], [PlatformVersion], [UploadGuid], [TotalViewed], [Url], [ReleaseDate]) VALUES (8, N'Lets add new app', 1, 1, N'Lets add new app', 1, NULL, 0, NULL, NULL, NULL, 0, 1, 0, N'98648fe8-8672-43d4-9767-2869c12e14da', NULL, N'lets-add-new-app-2', CAST(0x5D3A0B00 AS Date))
INSERT [dbo].[AppDraft] ([AppDraftID], [AppName], [PlatformID], [CategoryID], [Description], [PostedByUserID], [ReviewsCount], [IsVideoExist], [YoutubeEmbedLink], [WebsiteUrl], [StoreUrl], [IsBlocked], [IsPublished], [PlatformVersion], [UploadGuid], [TotalViewed], [Url], [ReleaseDate]) VALUES (7, N'Lets add new app', 1, 1, N'Lets add new app', 1, NULL, 0, NULL, NULL, NULL, 0, 1, 0, N'df4f5ff9-5cb8-48ea-bbf0-06d27375f30f', NULL, N'lets-add-new-app-2', CAST(0x5D3A0B00 AS Date))
INSERT [dbo].[AppDraft] ([AppDraftID], [AppName], [PlatformID], [CategoryID], [Description], [PostedByUserID], [ReviewsCount], [IsVideoExist], [YoutubeEmbedLink], [WebsiteUrl], [StoreUrl], [IsBlocked], [IsPublished], [PlatformVersion], [UploadGuid], [TotalViewed], [Url], [ReleaseDate]) VALUES (6, N'weffefweweffew', 1, 1, NULL, 1, NULL, 0, NULL, NULL, NULL, 0, 0, 0, N'a8d1a725-ec09-4c22-b483-153160780214', NULL, N'weffefweweffew', CAST(0xFE390B00 AS Date))
INSERT [dbo].[AppDraft] ([AppDraftID], [AppName], [PlatformID], [CategoryID], [Description], [PostedByUserID], [ReviewsCount], [IsVideoExist], [YoutubeEmbedLink], [WebsiteUrl], [StoreUrl], [IsBlocked], [IsPublished], [PlatformVersion], [UploadGuid], [TotalViewed], [Url], [ReleaseDate]) VALUES (5, N'efw', 1, 1, NULL, 1, NULL, 0, NULL, NULL, NULL, 0, 0, 0, N'0aa37ed0-3594-4129-81d5-44739dd21dff', NULL, N'efw', CAST(0xFE390B00 AS Date))
INSERT [dbo].[AppDraft] ([AppDraftID], [AppName], [PlatformID], [CategoryID], [Description], [PostedByUserID], [ReviewsCount], [IsVideoExist], [YoutubeEmbedLink], [WebsiteUrl], [StoreUrl], [IsBlocked], [IsPublished], [PlatformVersion], [UploadGuid], [TotalViewed], [Url], [ReleaseDate]) VALUES (4, N'Sample 4', 3, 1, N'Sample 3', 1, NULL, 0, NULL, NULL, NULL, 0, 0, 8, N'abf10899-367e-4dda-b685-d3a475d64570', NULL, N'sample-4', CAST(0xD6390B00 AS Date))
INSERT [dbo].[AppDraft] ([AppDraftID], [AppName], [PlatformID], [CategoryID], [Description], [PostedByUserID], [ReviewsCount], [IsVideoExist], [YoutubeEmbedLink], [WebsiteUrl], [StoreUrl], [IsBlocked], [IsPublished], [PlatformVersion], [UploadGuid], [TotalViewed], [Url], [ReleaseDate]) VALUES (3, N'Sample 2', 2, 2, N'Sample 2', 1, NULL, 0, NULL, NULL, NULL, 0, 0, 4.2, N'61dd3da2-07e9-4863-ac61-50930156905e', NULL, N'sample-2', CAST(0xD6390B00 AS Date))
INSERT [dbo].[AppDraft] ([AppDraftID], [AppName], [PlatformID], [CategoryID], [Description], [PostedByUserID], [ReviewsCount], [IsVideoExist], [YoutubeEmbedLink], [WebsiteUrl], [StoreUrl], [IsBlocked], [IsPublished], [PlatformVersion], [UploadGuid], [TotalViewed], [Url], [ReleaseDate]) VALUES (2, N'dwqdwq', 1, 1, NULL, 1, NULL, 0, NULL, NULL, NULL, 0, 0, 0, N'8d6d1103-2304-4f92-8af5-7ff649d7b557', NULL, N'dwqdwq', CAST(0x40390B00 AS Date))
INSERT [dbo].[AppDraft] ([AppDraftID], [AppName], [PlatformID], [CategoryID], [Description], [PostedByUserID], [ReviewsCount], [IsVideoExist], [YoutubeEmbedLink], [WebsiteUrl], [StoreUrl], [IsBlocked], [IsPublished], [PlatformVersion], [UploadGuid], [TotalViewed], [Url], [ReleaseDate]) VALUES (1, N'Plant VS Zombies', 1, 1, NULL, 1, NULL, 0, NULL, NULL, NULL, 0, 0, 0, N'7324f4fb-bda6-4faf-b0b2-dbfa472cf013', NULL, N'plant-vs-zombies', CAST(0x40390B00 AS Date))
SET IDENTITY_INSERT [dbo].[AppDraft] OFF
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Slug]) VALUES (1, N'Games', N'Games')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Slug]) VALUES (2, N'Learning ', N'Learning')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Slug]) VALUES (3, N'System ', N'System')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Slug]) VALUES (4, N'Lifestyle ', N'Lifestyle')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Slug]) VALUES (5, N'Health ', N'Health')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Slug]) VALUES (6, N'Utility ', N'Utility')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Slug]) VALUES (7, N'Agriculture ', N'Agriculture')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Slug]) VALUES (8, N'Cooking ', N'Cooking')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Slug]) VALUES (9, N'Business ', N'Business')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Slug]) VALUES (10, N'Comics ', N'Comics')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Slug]) VALUES (11, N'Finance ', N'Finance')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Slug]) VALUES (12, N'Health & Fitness ', N'Health-Fitness')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Slug]) VALUES (13, N'Medical ', N'Medical')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Slug]) VALUES (14, N'Personalization', N'None')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Slug]) VALUES (15, N'Shopping ', N'Shopping')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Slug]) VALUES (16, N'Communication ', N'Communication')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Slug]) VALUES (17, N'Books & Reference ', N'Books-Reference')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Slug]) VALUES (18, N'Weather', N'None')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Slug]) VALUES (19, N'News & Magazines ', N'News-Magazines')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Slug]) VALUES (20, N'Sports ', N'Sports')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Slug]) VALUES (21, N'Widgets ', N'Widgets')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Slug]) VALUES (22, N'Productivity ', N'Productivity')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Slug]) VALUES (23, N'Media & Video ', N'Media-Video')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Slug]) VALUES (24, N'Live Wallpaper ', N'Live-Wallpaper')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Slug]) VALUES (25, N'Transportation ', N'Transportation')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[FeaturedImage] ON 

INSERT [dbo].[FeaturedImage] ([FeaturedImageID], [AppID], [IsFeatured], [UserID]) VALUES (1, 1, 0, 1)
INSERT [dbo].[FeaturedImage] ([FeaturedImageID], [AppID], [IsFeatured], [UserID]) VALUES (2, 3, 0, 1)
INSERT [dbo].[FeaturedImage] ([FeaturedImageID], [AppID], [IsFeatured], [UserID]) VALUES (3, 2, 0, 1)
SET IDENTITY_INSERT [dbo].[FeaturedImage] OFF
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'8828c1ba-cb5f-43d4-ad6b-00fe99263511', N'8435a280-7ead-418b-9b63-f29a0816ec7a', 3, 3, N'Plant VS Zombies-3', NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'cb349445-de9b-4355-bd37-048c2d8d5ac3', N'0598bc1d-9b8e-4634-8bb6-31942a7ad68a', 2, 0, N'Sample App', NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'9aca3b16-d367-439e-a118-058fed3b03b4', N'c69c1955-287a-44f9-8211-5d3e1d6a1c9c', 7, 0, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'6a76354c-2dc2-4c34-86d8-06169572d7d6', N'89aa4dd9-d8e8-4fd4-9af7-36fc110d5188', 3, 1, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'50f94ba7-b054-446b-83cd-07337687d615', N'289bdd3e-b146-4614-b3ee-9df0562e2273', 7, 0, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'c5ed929d-d768-408b-9a48-078c79bf54a8', N'fa1595d4-da44-4205-b3dd-6b6e524866d0', 7, 0, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'9a19ebac-6d7b-4093-809d-0ca041138207', N'89aa4dd9-d8e8-4fd4-9af7-36fc110d5188', 8, 0, NULL, NULL, N'png')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'87036949-3afe-48be-b7a9-0cd93d95e21a', N'fa1595d4-da44-4205-b3dd-6b6e524866d0', 5, 0, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'f284caf9-c1b9-49a2-8117-16653e5a2a44', N'8435a280-7ead-418b-9b63-f29a0816ec7a', 1, 0, N'Plant VS Zombies', NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'813022a9-6f49-4aad-8a13-168159b38754', N'53be2a3e-8cff-49c7-88b4-158b252969b2', 8, 0, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'2a46c244-93dd-4b65-994f-17248fd021f8', N'e94520fd-50d7-43e2-95f4-699e2e156806', 7, 0, N'new example app 2', NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'88516624-bb9b-478e-aa95-178ce03adfaa', N'0598bc1d-9b8e-4634-8bb6-31942a7ad68a', 1, 0, N'Sample App', NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'a7785347-89f2-4730-8319-18cf6c4bf30d', N'0f759dc0-b939-480e-82a5-6133aa3bcc3d', 7, 0, N'Sample App', NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'd42c6fda-0e42-4e86-9645-19a2426e0e42', N'8435a280-7ead-418b-9b63-f29a0816ec7a', 3, 2, N'Plant VS Zombies-2', NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'4da4b832-e724-4d11-92f3-19d5df852ea7', N'0dc17da2-10bc-4c15-a172-0b0ef7bb9e39', 3, 3, N'Sample App 2-3', NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'191821f2-5807-4aae-b91e-1a00af1aaefe', N'0dc17da2-10bc-4c15-a172-0b0ef7bb9e39', 2, 0, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'ffe56d97-b0ef-47bf-8ea2-20127f6f2212', N'8435a280-7ead-418b-9b63-f29a0816ec7a', 7, 0, N'Plant VS Zombies', NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'e3418500-3ae4-4c4b-b892-215d705bac08', N'e94520fd-50d7-43e2-95f4-699e2e156806', 2, 0, N'new example app 2', NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'210ad645-fe09-444a-b63a-23bf65a8fca8', N'289bdd3e-b146-4614-b3ee-9df0562e2273', 8, 0, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'522f55c7-0510-4c6b-87f1-246ce69797e8', N'0f759dc0-b939-480e-82a5-6133aa3bcc3d', 3, 1, N'Sample App-1', NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'7fcf1b26-c1e0-4327-ba7f-29d5fd55bd25', N'7fcf1b26-c1e0-4327-ba7f-29d5fd55bd25', 6, 0, N'Advertise 1', NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'906bb29e-71eb-4a1c-b029-2bb3e4cd8f65', N'0dc17da2-10bc-4c15-a172-0b0ef7bb9e39', 3, 1, N'Sample App 2-1', NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'cb096c0c-bac2-4356-8d91-2c350e35542d', N'fa1595d4-da44-4205-b3dd-6b6e524866d0', 8, 0, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'c8a01a84-fc02-47f3-9dde-2d438114f00c', N'89aa4dd9-d8e8-4fd4-9af7-36fc110d5188', 3, 6, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'a041a2b1-3437-4034-9144-316ff5f12eca', N'89aa4dd9-d8e8-4fd4-9af7-36fc110d5188', 3, 4, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'bc78f73e-25b2-4360-b96b-340af832545a', N'c69c1955-287a-44f9-8211-5d3e1d6a1c9c', 5, 0, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'aec6e7d1-3db6-4f1d-a0a6-360b97927c12', N'6f363a57-2094-4d3a-9252-ae2e2a76a97b', 7, 0, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'34049db3-d574-48b7-8305-36501b66004f', N'1e86ed90-0bb1-46b5-9524-a8a9815daabc', 1, 0, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'8d4a075e-7e7b-45cd-8c98-368d19734f29', N'1e86ed90-0bb1-46b5-9524-a8a9815daabc', 8, 0, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'649d925c-d02f-46d3-be61-39a74d0b086d', N'289bdd3e-b146-4614-b3ee-9df0562e2273', 3, 1, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'b7545376-3c8d-4226-8134-3b68d56be382', N'5dc57933-5c3d-4b94-9d30-0a311418037e', 3, 1, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'5e324a00-977d-4436-8a15-3ce9e1c424f1', N'5e324a00-977d-4436-8a15-3ce9e1c424f1', 6, 0, N'Advertise 2', NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'4ac33ad3-6d95-4417-ba18-438496db77ed', N'0f759dc0-b939-480e-82a5-6133aa3bcc3d', 2, 0, N'Sample App', NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'35531c63-32a0-4b6e-9ad2-439b12bf4321', N'55d3b71c-cafe-4f68-a2e8-32a8df8f922c', 3, 1, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'190b6945-9617-4140-99a9-4491f13163b0', N'e40b30a6-4be4-4c49-880e-ce67d8e1a1e7', 1, 0, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'e78f866d-782e-4996-86e5-48a229e412df', N'5dc57933-5c3d-4b94-9d30-0a311418037e', 2, 0, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'882fa89d-4b12-4ec7-b055-48dda2baa86a', N'0598bc1d-9b8e-4634-8bb6-31942a7ad68a', 7, 0, N'Sample App', NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'f80c0daa-80b0-4a11-811c-48ef979871aa', N'1e86ed90-0bb1-46b5-9524-a8a9815daabc', 5, 0, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'442bc212-1609-48d5-b24f-4b54fe7f7e09', N'807eeca9-35fe-4899-89e0-079449e1b6db', 2, 0, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'1043ca7a-b8c0-42e9-8bf9-4dbed0cde448', N'8435a280-7ead-418b-9b63-f29a0816ec7a', 3, 6, N'Plant VS Zombies-6', NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'ef64b435-16d1-450b-b8ea-4e4684fea84b', N'e94520fd-50d7-43e2-95f4-699e2e156806', 8, 0, N'new example app 2', NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'd9b1c303-419f-4123-948f-4e89f56bfd97', N'fa1595d4-da44-4205-b3dd-6b6e524866d0', 3, 1, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'e4e6af85-5f41-4fd9-b9ad-53c629d9c8c0', N'45040001-5666-4427-aee6-8ad3b566db51', 3, 2, N'Plant VS Zombies-2', NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'94aaaedb-c917-4609-92ac-55fa172b3edb', N'c69c1955-287a-44f9-8211-5d3e1d6a1c9c', 1, 0, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'90313863-a13e-4261-83ef-591c4509f865', N'5dc57933-5c3d-4b94-9d30-0a311418037e', 7, 0, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'0b2518bb-3adf-47d0-b9e9-594e00d8dcd9', N'289bdd3e-b146-4614-b3ee-9df0562e2273', 5, 0, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'cd66f243-468f-41ce-8757-59ec8d64eff2', N'8435a280-7ead-418b-9b63-f29a0816ec7a', 3, 1, N'Plant VS Zombies-1', NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'0be0c2d3-8ee6-4088-bd09-5b9a50286452', N'0dc17da2-10bc-4c15-a172-0b0ef7bb9e39', 3, 4, N'Sample App 2-4', NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'1088707b-cdde-4228-9e95-5d4162df0b9d', N'89aa4dd9-d8e8-4fd4-9af7-36fc110d5188', 5, 0, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'f3b99b4e-258f-4610-acfa-66521f7fdac8', N'8435a280-7ead-418b-9b63-f29a0816ec7a', 5, 0, N'Plant VS Zombies', NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'f749fe20-6eb8-4d0e-911f-673c0011c650', N'45040001-5666-4427-aee6-8ad3b566db51', 2, 0, N'Plant VS Zombies', NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'611b6efc-110c-4b23-a66d-698f4a895601', N'8435a280-7ead-418b-9b63-f29a0816ec7a', 2, 0, N'Plant VS Zombies', NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'e6f3793d-1634-4909-80f3-6a692611833f', N'e40b30a6-4be4-4c49-880e-ce67d8e1a1e7', 3, 1, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'11f749e2-5d77-4a23-9080-6dd9822b57f9', N'e40b30a6-4be4-4c49-880e-ce67d8e1a1e7', 3, 3, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'f461ada4-028e-4ceb-a7bb-71cbeaa738cd', N'6f363a57-2094-4d3a-9252-ae2e2a76a97b', 1, 0, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'f6ec0dcd-003b-4686-abee-732c5bc7de95', N'0598bc1d-9b8e-4634-8bb6-31942a7ad68a', 8, 0, N'Sample App', NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'710f8074-bf33-4a8a-bda7-740553ac3077', N'45040001-5666-4427-aee6-8ad3b566db51', 3, 4, N'Plant VS Zombies-4', NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'6b7757ce-5642-4342-9845-748381af31ca', N'e40b30a6-4be4-4c49-880e-ce67d8e1a1e7', 2, 0, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'27f3b6a1-5ada-4690-81ee-7793e418aed4', N'53be2a3e-8cff-49c7-88b4-158b252969b2', 2, 0, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'9f266cc3-4cd7-41e1-8717-7af5c8ebfd4c', N'8435a280-7ead-418b-9b63-f29a0816ec7a', 3, 7, N'Plant VS Zombies-7', NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'8d996a05-a9da-481c-a358-7b0081a4f8bb', N'89aa4dd9-d8e8-4fd4-9af7-36fc110d5188', 3, 3, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'7d032c26-744e-42be-b7fc-7d35d07e9dab', N'45040001-5666-4427-aee6-8ad3b566db51', 3, 3, N'Plant VS Zombies-3', NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'be78fe90-0932-44c6-8cd1-816b35d6d232', N'be78fe90-0932-44c6-8cd1-816b35d6d232', 6, 0, N'Advertise 3', NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'9ae9cf3d-c65b-4c48-806c-82bb11273cdb', N'55d3b71c-cafe-4f68-a2e8-32a8df8f922c', 7, 0, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'613954a6-b3c6-4ea1-87ab-83022f2f5799', N'0f759dc0-b939-480e-82a5-6133aa3bcc3d', 1, 0, N'Sample App', NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'a6b293e6-9675-420d-971e-841f02a63e5a', N'c69c1955-287a-44f9-8211-5d3e1d6a1c9c', 2, 0, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'4a80de7d-c26d-4e84-a2c4-8f50d192843a', N'89aa4dd9-d8e8-4fd4-9af7-36fc110d5188', 3, 2, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'2e0d226d-44a8-4340-99bc-915917e9738c', N'61dd3da2-07e9-4863-ac61-50930156905e', 3, 1, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'893322b8-3fb3-41dc-8171-933c5bd208d8', N'e40b30a6-4be4-4c49-880e-ce67d8e1a1e7', 5, 0, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'47850a88-cba0-4a63-bdc2-95d7afb291ea', N'0598bc1d-9b8e-4634-8bb6-31942a7ad68a', 3, 1, N'Sample App-1', NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'a768d0f0-611a-4ac4-9d43-9776e4197240', N'89aa4dd9-d8e8-4fd4-9af7-36fc110d5188', 2, 0, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'1f1eb9d9-3bd7-4fe1-8903-97ebed58e96c', N'807eeca9-35fe-4899-89e0-079449e1b6db', 7, 0, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'2653af08-2a51-4e5d-a6a0-9a782f6b0e9a', N'53be2a3e-8cff-49c7-88b4-158b252969b2', 7, 0, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'a92a79e9-2a91-4b83-b9d4-9ce270435cd2', N'98648fe8-8672-43d4-9767-2869c12e14da', 8, 0, N'Lets add new app', NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'6f48b0f8-f3d8-464d-b3a4-a087a2cf30f1', N'61dd3da2-07e9-4863-ac61-50930156905e', 1, 0, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'6195a7f6-a63f-4dc3-9466-a3d3bbd3af68', N'807eeca9-35fe-4899-89e0-079449e1b6db', 5, 0, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'a11c2e03-33f7-45fb-bf26-a4b62556de64', N'0dc17da2-10bc-4c15-a172-0b0ef7bb9e39', 1, 0, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'9c1980bd-5b8c-4fb0-9b65-a54bab0dbec0', N'6f363a57-2094-4d3a-9252-ae2e2a76a97b', 8, 0, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'70b745a1-b8ef-4e13-9742-a59b54f47190', N'8435a280-7ead-418b-9b63-f29a0816ec7a', 3, 5, N'Plant VS Zombies-5', NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'75e226e3-7e85-4035-9e76-a8f1ff94b98c', N'e40b30a6-4be4-4c49-880e-ce67d8e1a1e7', 3, 6, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'e1bc8169-a8ff-43fb-b6db-ade5e6d4789c', N'53be2a3e-8cff-49c7-88b4-158b252969b2', 5, 0, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'13edc21f-6911-4346-87c1-b08d209b2c15', N'6f363a57-2094-4d3a-9252-ae2e2a76a97b', 5, 0, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'c854b90b-0f4a-4b06-ae69-b0c355c3debf', N'89aa4dd9-d8e8-4fd4-9af7-36fc110d5188', 1, 0, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'fff5b890-6622-4d85-afc5-b2f66e309545', N'0dc17da2-10bc-4c15-a172-0b0ef7bb9e39', 3, 2, N'Sample App 2-2', NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'cf5850df-4ea0-4684-8c87-b3665a5804cc', N'45040001-5666-4427-aee6-8ad3b566db51', 3, 5, N'Plant VS Zombies-5', NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'f1c9f1ce-0d51-4688-b956-b40cabb0f289', N'0f759dc0-b939-480e-82a5-6133aa3bcc3d', 5, 0, N'Sample App', NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'b773c712-1f9e-4f19-afe6-b5ae3e7d147c', N'45040001-5666-4427-aee6-8ad3b566db51', 7, 0, N'Plant VS Zombies', NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'a4c002e0-5a09-4ede-90b1-b821eb71501c', N'0598bc1d-9b8e-4634-8bb6-31942a7ad68a', 5, 0, N'Sample App', NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'dd4d13b7-7c96-4cb1-a361-b97f6ec808c3', N'c69c1955-287a-44f9-8211-5d3e1d6a1c9c', 3, 1, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'ee073ef0-7c2d-4d94-96f1-ba24e90e1d34', N'8435a280-7ead-418b-9b63-f29a0816ec7a', 8, 0, N'Plant VS Zombies 2', NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'fd5444b6-843f-4ca1-bc64-bba9529206f3', N'1e86ed90-0bb1-46b5-9524-a8a9815daabc', 7, 0, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'b92b8684-ea6a-40d5-a166-bed88eb9f989', N'e94520fd-50d7-43e2-95f4-699e2e156806', 1, 0, N'new example app 2', NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'98b5edcd-1ad6-4596-a39b-bf0a133046a3', N'289bdd3e-b146-4614-b3ee-9df0562e2273', 3, 3, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'5a36c75d-eadb-4883-ab40-c0d9471c9704', N'6f363a57-2094-4d3a-9252-ae2e2a76a97b', 2, 0, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'cff6c5b2-5a84-4534-bafc-c1ac8b60f4e3', N'5dc57933-5c3d-4b94-9d30-0a311418037e', 1, 0, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'de8069b9-d273-41f3-b029-c3941c2a5615', N'807eeca9-35fe-4899-89e0-079449e1b6db', 8, 0, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'ed229b41-2745-44b1-8250-c5245d1afe3f', N'e40b30a6-4be4-4c49-880e-ce67d8e1a1e7', 3, 7, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'c2279672-1417-47b1-924c-c5c164de8918', N'0dc17da2-10bc-4c15-a172-0b0ef7bb9e39', 8, 0, N'Sample App 2', NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'5ee492ce-4709-4c8f-8ffd-c5f6a5946e98', N'0dc17da2-10bc-4c15-a172-0b0ef7bb9e39', 5, 0, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'f8e81df3-4018-4266-b912-d19b3e9ca762', N'e94520fd-50d7-43e2-95f4-699e2e156806', 5, 0, N'new example app 2', NULL, N'jpg')
GO
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'783bc46c-8d26-43dd-873d-d2ffd695b324', N'fa1595d4-da44-4205-b3dd-6b6e524866d0', 1, 0, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'a24de52f-faba-45f1-a271-d623abc887af', N'e40b30a6-4be4-4c49-880e-ce67d8e1a1e7', 3, 4, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'b8e2ec0a-f0a5-4c64-ae25-d7efc7c38dc6', N'c69c1955-287a-44f9-8211-5d3e1d6a1c9c', 8, 0, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'99c28338-4810-47b9-a9e1-d91fb89540a0', N'5dc57933-5c3d-4b94-9d30-0a311418037e', 5, 0, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'35471a64-e63c-450b-872c-d94fbd3b38c5', N'53be2a3e-8cff-49c7-88b4-158b252969b2', 3, 1, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'920a883b-7bd5-4e8b-a1b4-d958e76e7b1c', N'53be2a3e-8cff-49c7-88b4-158b252969b2', 1, 0, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'0f8969fc-5a18-45fe-989f-d96a253d0351', N'55d3b71c-cafe-4f68-a2e8-32a8df8f922c', 8, 0, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'16aeec66-03b8-4865-b65c-db75f266730f', N'89aa4dd9-d8e8-4fd4-9af7-36fc110d5188', 7, 0, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'a1144730-96da-46ae-9525-db830f6f8566', N'807eeca9-35fe-4899-89e0-079449e1b6db', 3, 1, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'0426cf75-043a-480e-ae39-dba794557d6e', N'89aa4dd9-d8e8-4fd4-9af7-36fc110d5188', 3, 5, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'cc312525-922c-4234-b181-dc027cc1e9c4', N'6f363a57-2094-4d3a-9252-ae2e2a76a97b', 3, 1, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'c2a9d430-ebae-4ef0-82e5-dc061e99a6c2', N'fa1595d4-da44-4205-b3dd-6b6e524866d0', 2, 0, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'63719698-8e3a-49e4-ae5f-ddb1465b5a89', N'e94520fd-50d7-43e2-95f4-699e2e156806', 3, 1, N'new example app 2-1', NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'3d58ec8d-705e-40e6-8db7-deb7f5ce8225', N'e40b30a6-4be4-4c49-880e-ce67d8e1a1e7', 3, 5, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'6a30d9c0-7df4-4eed-97b7-e0b65f42722c', N'45040001-5666-4427-aee6-8ad3b566db51', 5, 0, N'Plant VS Zombies', NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'7e66cd69-0c01-4958-96c5-e29989d482b9', N'e40b30a6-4be4-4c49-880e-ce67d8e1a1e7', 3, 8, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'a230e4f2-1b4e-4d39-83fd-e7a5eae290d3', N'0dc17da2-10bc-4c15-a172-0b0ef7bb9e39', 7, 0, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'960adf08-3b8a-4e69-960a-e870e1f11337', N'45040001-5666-4427-aee6-8ad3b566db51', 1, 0, N'Plant VS Zombies', NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'9091fe03-6309-4ceb-a306-e8cac21d6ec3', N'55d3b71c-cafe-4f68-a2e8-32a8df8f922c', 5, 0, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'8da2ec52-5c94-4ec1-bcef-e9d5063a3322', N'8435a280-7ead-418b-9b63-f29a0816ec7a', 3, 4, N'Plant VS Zombies-4', NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'9fe5d9a7-12d1-469d-91a3-eac301cf25c7', N'1e86ed90-0bb1-46b5-9524-a8a9815daabc', 2, 0, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'9b3b036e-1c83-43bd-940e-ec205b7e25af', N'289bdd3e-b146-4614-b3ee-9df0562e2273', 1, 0, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'70e1f1c1-96df-4a16-a47a-ec349548b957', N'289bdd3e-b146-4614-b3ee-9df0562e2273', 3, 2, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'ca39bae8-d6c0-4f8f-95e9-efe668f35527', N'807eeca9-35fe-4899-89e0-079449e1b6db', 1, 0, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'2491dff2-0029-479d-89ff-f4a96e019bfc', N'45040001-5666-4427-aee6-8ad3b566db51', 3, 1, N'Plant VS Zombies-1', NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'048bfe1c-71bf-4e37-9e27-f6b5506876d5', N'1e86ed90-0bb1-46b5-9524-a8a9815daabc', 3, 1, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'8fdf3a3b-9875-41f3-80b9-fa9657fb4158', N'55d3b71c-cafe-4f68-a2e8-32a8df8f922c', 2, 0, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'5cf0a792-49cc-40d9-8839-fbd584ed01e6', N'e40b30a6-4be4-4c49-880e-ce67d8e1a1e7', 7, 0, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'da88ea19-811d-40d0-8f93-fd666d12bf29', N'289bdd3e-b146-4614-b3ee-9df0562e2273', 2, 0, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'3cf2b840-95f7-41fd-a6a0-feb0a083ae71', N'55d3b71c-cafe-4f68-a2e8-32a8df8f922c', 1, 0, NULL, NULL, N'jpg')
INSERT [dbo].[Gallery] ([GalleryID], [UploadGuid], [GalleryCategoryID], [Sequence], [Title], [Subtitle], [Extension]) VALUES (N'54d596b0-4440-4f6e-b960-fed0807a8121', N'0f759dc0-b939-480e-82a5-6133aa3bcc3d', 8, 0, N'Sample App', NULL, N'jpg')
SET IDENTITY_INSERT [dbo].[GalleryCategory] ON 

INSERT [dbo].[GalleryCategory] ([GalleryCategoryID], [CategoryName], [Width], [Height], [IsAdvertise]) VALUES (1, N'Home Page Gallery (featured)', 481, 440, 0)
INSERT [dbo].[GalleryCategory] ([GalleryCategoryID], [CategoryName], [Width], [Height], [IsAdvertise]) VALUES (2, N'Suggestion Icon', 192, 119, 0)
INSERT [dbo].[GalleryCategory] ([GalleryCategoryID], [CategoryName], [Width], [Height], [IsAdvertise]) VALUES (3, N'App Gallery Images', 1140, 400, 0)
INSERT [dbo].[GalleryCategory] ([GalleryCategoryID], [CategoryName], [Width], [Height], [IsAdvertise]) VALUES (4, N'Gallery Icons', 80, 60, 0)
INSERT [dbo].[GalleryCategory] ([GalleryCategoryID], [CategoryName], [Width], [Height], [IsAdvertise]) VALUES (5, N'Search Icons', 117, 177, 0)
INSERT [dbo].[GalleryCategory] ([GalleryCategoryID], [CategoryName], [Width], [Height], [IsAdvertise]) VALUES (6, N'*Advertise Image Size*', 243, 246, 1)
INSERT [dbo].[GalleryCategory] ([GalleryCategoryID], [CategoryName], [Width], [Height], [IsAdvertise]) VALUES (7, N'Home Page Icon', 122, 115, 0)
INSERT [dbo].[GalleryCategory] ([GalleryCategoryID], [CategoryName], [Width], [Height], [IsAdvertise]) VALUES (8, N'Youtube Cover Image', 1140, 400, 0)
SET IDENTITY_INSERT [dbo].[GalleryCategory] OFF
SET IDENTITY_INSERT [dbo].[NotificationType] ON 

INSERT [dbo].[NotificationType] ([NotificationTypeID], [TypeName], [IsGood], [DefaultMessage]) VALUES (1, N'Message Added', 1, N' ')
INSERT [dbo].[NotificationType] ([NotificationTypeID], [TypeName], [IsGood], [DefaultMessage]) VALUES (2, N'App Added', 1, N'{0} app is added to the store.')
INSERT [dbo].[NotificationType] ([NotificationTypeID], [TypeName], [IsGood], [DefaultMessage]) VALUES (3, N'App Reviewed', 1, N'{0} app has been reviewed.')
INSERT [dbo].[NotificationType] ([NotificationTypeID], [TypeName], [IsGood], [DefaultMessage]) VALUES (4, N'Review Liked', 1, N'{0} review liked by {1}.')
INSERT [dbo].[NotificationType] ([NotificationTypeID], [TypeName], [IsGood], [DefaultMessage]) VALUES (5, N'Review Disliked', 0, N'Your review has been disliked.')
INSERT [dbo].[NotificationType] ([NotificationTypeID], [TypeName], [IsGood], [DefaultMessage]) VALUES (6, N'App Blocked', 0, N'''{0}'' app is blocked.')
INSERT [dbo].[NotificationType] ([NotificationTypeID], [TypeName], [IsGood], [DefaultMessage]) VALUES (7, N'Got Reported', 0, N'{0} has been reported by {1}')
INSERT [dbo].[NotificationType] ([NotificationTypeID], [TypeName], [IsGood], [DefaultMessage]) VALUES (8, N'Gained Points', 1, N'You have gained {0} points.')
INSERT [dbo].[NotificationType] ([NotificationTypeID], [TypeName], [IsGood], [DefaultMessage]) VALUES (9, N'Lose Points', 0, N'You have lost {0} points.')
SET IDENTITY_INSERT [dbo].[NotificationType] OFF
SET IDENTITY_INSERT [dbo].[Platform] ON 

INSERT [dbo].[Platform] ([PlatformID], [PlatformName], [Icon]) VALUES (1, N'Apple', N'fa fa-apple')
INSERT [dbo].[Platform] ([PlatformID], [PlatformName], [Icon]) VALUES (2, N'Android', N'fa fa-android')
INSERT [dbo].[Platform] ([PlatformID], [PlatformName], [Icon]) VALUES (3, N'Windows', N'fa fa-windows')
INSERT [dbo].[Platform] ([PlatformID], [PlatformName], [Icon]) VALUES (4, N'FireFoxOS', NULL)
INSERT [dbo].[Platform] ([PlatformID], [PlatformName], [Icon]) VALUES (5, N'Others', NULL)
SET IDENTITY_INSERT [dbo].[Platform] OFF
SET IDENTITY_INSERT [dbo].[Review] ON 

INSERT [dbo].[Review] ([ReviewID], [Title], [Pros], [Cons], [IsSuggest], [Comment1], [Comment2], [AppID], [UserID], [LikedCount], [DisLikeCount], [Rating], [CreatedDate]) VALUES (1, N'Review 32', N'Pros Pros Pros Pros Pros Pros Pros Pros Pros Pros Pros Pros Pros Pros Pros Pros Pros Pros Pros Pros Pros Pros Pros Pros ', N'Cons Cons Cons Cons Cons Cons Cons Cons Cons Cons Cons Cons Cons Cons Cons', 0, N'Thouhts Thouhts Thouhts Thouhts Thouhts Thouhts Thouhts Thouhts Thouhts Thouhts Thouhts ThouhtsThouh', N'ts Thouhts Thouhts Thouhts Thouhts ThouhtsThouhts Thouhts Thouhts Thouhts Thouhts ThouhtsThouhts Thouhts Thouhts Thouhts Thouhts Thouhts', 3, 1, 0, 0, 9, CAST(0x00000000 AS Date))
INSERT [dbo].[Review] ([ReviewID], [Title], [Pros], [Cons], [IsSuggest], [Comment1], [Comment2], [AppID], [UserID], [LikedCount], [DisLikeCount], [Rating], [CreatedDate]) VALUES (2, N'h', N'jgjkgklh jgjkgklhjgjkgklhjgjkgklhjgjkgklhjgjkgklhjgjkgklhjgjkgklhjgjkgklhjgjkgklhjgjkgklhjgjkgklh

', N'jgjkgklhjgjkgklhjgjkgklhjgjkgklhjgjkgklhjgjkgklhjgjkgklhjgjkgklhjgjkgklhjgjkgklhjgjkgklh', 0, N'jgjkgklhjgjkgklhjgjkgklhjgjkgklhjgjkgklhjgjkgklhjgjkgklhjgjkgklhjgjkgklhjgjkgklhjgjkgklh', N'', 1, 1, 0, 0, 10, CAST(0x00000000 AS Date))
INSERT [dbo].[Review] ([ReviewID], [Title], [Pros], [Cons], [IsSuggest], [Comment1], [Comment2], [AppID], [UserID], [LikedCount], [DisLikeCount], [Rating], [CreatedDate]) VALUES (3, N'Sample Review', N'ProsX Comments Comments Comments Comments Comments Comments Comments Comments Comments Comments Comments Comments Comments Comments Comments Comments Comments Comments Comments Comments Comments Comments Comments Comments Comments Comments Comments Comments Comments Comments Comments ', N'ConsX Comments Comments Comments Comments Comments Comments Comments Comments Comments Comments Comments Comments Comments Comments Comments Comments Comments Comments Comments Comments Comments Comments Comments Comments Comments Comments Comments Comments Comments Comments Comments ', 0, N'ttwwComments Comments Comments Comments Comments Comments Comments Comments Comments Comments Commen', N'ts Comments Comments Comments Comments Comments Comments Comments Comments Comments Comments Comments Comments Comments Comments Comments Comments Comments Comments Comments ', 4, 1, 0, 0, 3, CAST(0x00000000 AS Date))
INSERT [dbo].[Review] ([ReviewID], [Title], [Pros], [Cons], [IsSuggest], [Comment1], [Comment2], [AppID], [UserID], [LikedCount], [DisLikeCount], [Rating], [CreatedDate]) VALUES (5, N'Hello', N'A mob of fun-loving zombies is about to invade your home, and your only defense is an arsenal of 49 zombie-zapping plants. Use Peashooters, Wall-nuts, Cherry Bombs and more to slow down, confuse, weak ... see more', N'A mob of fun-loving zombies is about to invade your home, and your only defense is an arsenal of 49 zombie-zapping plants. Use Peashooters, Wall-nuts, Cherry Bombs and more to slow down, confuse, weak ... see more', 0, N'A mob of fun-loving zombies is about to invade your home, and your only defense is an arsenal of 49 ', N'zombie-zapping plants. Use Peashooters, Wall-nuts, Cherry Bombs and more to slow down, confuse, weak ... see more', 2, 7, 0, 0, 4, CAST(0x00000000 AS Date))
INSERT [dbo].[Review] ([ReviewID], [Title], [Pros], [Cons], [IsSuggest], [Comment1], [Comment2], [AppID], [UserID], [LikedCount], [DisLikeCount], [Rating], [CreatedDate]) VALUES (6, N'HHello Sample App ', N'Sample App Sample App Sample App Sample App Sample App Sample App Sample App Sample App Sample App Sample App Sample App ', N'Sample App Sample App Sample App Sample App Sample App Sample App Sample App ', 1, N'Sample App Sample App Sample App Sample App Sample App Sample App Sample App ', N'', 14, 7, 0, 0, 5, CAST(0xAE3A0B00 AS Date))
SET IDENTITY_INSERT [dbo].[Review] OFF
SET IDENTITY_INSERT [dbo].[ReviewLikeDislike] ON 

INSERT [dbo].[ReviewLikeDislike] ([ReviewLikeDislikeID], [ReviewID], [UserID], [IsLiked], [IsDisliked], [IsNone]) VALUES (1, 1, 1, 1, 0, 0)
INSERT [dbo].[ReviewLikeDislike] ([ReviewLikeDislikeID], [ReviewID], [UserID], [IsLiked], [IsDisliked], [IsNone]) VALUES (2, 3, 1, 1, 0, 0)
INSERT [dbo].[ReviewLikeDislike] ([ReviewLikeDislikeID], [ReviewID], [UserID], [IsLiked], [IsDisliked], [IsNone]) VALUES (4, 6, 7, 1, 0, 0)
SET IDENTITY_INSERT [dbo].[ReviewLikeDislike] OFF
SET IDENTITY_INSERT [dbo].[Tag] ON 

INSERT [dbo].[Tag] ([TagID], [TagDisplay]) VALUES (1, N'Plant')
INSERT [dbo].[Tag] ([TagID], [TagDisplay]) VALUES (2, N' Zombies')
INSERT [dbo].[Tag] ([TagID], [TagDisplay]) VALUES (3, N'Sample')
INSERT [dbo].[Tag] ([TagID], [TagDisplay]) VALUES (4, N' App')
INSERT [dbo].[Tag] ([TagID], [TagDisplay]) VALUES (5, N' Sample App')
INSERT [dbo].[Tag] ([TagID], [TagDisplay]) VALUES (6, N'Sample 3')
INSERT [dbo].[Tag] ([TagID], [TagDisplay]) VALUES (7, N'Sample App 5')
INSERT [dbo].[Tag] ([TagID], [TagDisplay]) VALUES (8, N'qwdqwd')
INSERT [dbo].[Tag] ([TagID], [TagDisplay]) VALUES (9, N'new')
INSERT [dbo].[Tag] ([TagID], [TagDisplay]) VALUES (10, N' example')
INSERT [dbo].[Tag] ([TagID], [TagDisplay]) VALUES (11, N'new example app 2')
INSERT [dbo].[Tag] ([TagID], [TagDisplay]) VALUES (12, N' new')
INSERT [dbo].[Tag] ([TagID], [TagDisplay]) VALUES (13, N'Lets add new app')
INSERT [dbo].[Tag] ([TagID], [TagDisplay]) VALUES (14, N'wddwdw')
INSERT [dbo].[Tag] ([TagID], [TagDisplay]) VALUES (15, N'dwdwdw')
INSERT [dbo].[Tag] ([TagID], [TagDisplay]) VALUES (16, N'dqwqdw')
INSERT [dbo].[Tag] ([TagID], [TagDisplay]) VALUES (17, N'wqddwq')
INSERT [dbo].[Tag] ([TagID], [TagDisplay]) VALUES (18, N'qdwdwq')
INSERT [dbo].[Tag] ([TagID], [TagDisplay]) VALUES (19, N'dwwqdwdqdwq')
INSERT [dbo].[Tag] ([TagID], [TagDisplay]) VALUES (20, N'dqwwdq')
INSERT [dbo].[Tag] ([TagID], [TagDisplay]) VALUES (21, N'dqwdwqdwqdwq')
INSERT [dbo].[Tag] ([TagID], [TagDisplay]) VALUES (22, N'dqwdwq')
INSERT [dbo].[Tag] ([TagID], [TagDisplay]) VALUES (23, N'dwq')
INSERT [dbo].[Tag] ([TagID], [TagDisplay]) VALUES (24, N'dqw')
INSERT [dbo].[Tag] ([TagID], [TagDisplay]) VALUES (25, N'd')
INSERT [dbo].[Tag] ([TagID], [TagDisplay]) VALUES (26, N'w')
INSERT [dbo].[Tag] ([TagID], [TagDisplay]) VALUES (27, N'dwqwddwwd')
INSERT [dbo].[Tag] ([TagID], [TagDisplay]) VALUES (28, N'App')
INSERT [dbo].[Tag] ([TagID], [TagDisplay]) VALUES (29, N'Sample App')
INSERT [dbo].[Tag] ([TagID], [TagDisplay]) VALUES (30, N'example')
INSERT [dbo].[Tag] ([TagID], [TagDisplay]) VALUES (31, N'Hello')
INSERT [dbo].[Tag] ([TagID], [TagDisplay]) VALUES (32, N'World')
INSERT [dbo].[Tag] ([TagID], [TagDisplay]) VALUES (33, N'Hello World')
INSERT [dbo].[Tag] ([TagID], [TagDisplay]) VALUES (34, N'adwdw')
SET IDENTITY_INSERT [dbo].[Tag] OFF
SET IDENTITY_INSERT [dbo].[TagAppRelation] ON 

INSERT [dbo].[TagAppRelation] ([TagAppRelationID], [TagID], [AppID]) VALUES (4, 2, 2)
INSERT [dbo].[TagAppRelation] ([TagAppRelationID], [TagID], [AppID]) VALUES (8, 2, 3)
INSERT [dbo].[TagAppRelation] ([TagAppRelationID], [TagID], [AppID]) VALUES (14, 2, 1)
INSERT [dbo].[TagAppRelation] ([TagAppRelationID], [TagID], [AppID]) VALUES (29, 5, 4)
INSERT [dbo].[TagAppRelation] ([TagAppRelationID], [TagID], [AppID]) VALUES (30, 6, 5)
INSERT [dbo].[TagAppRelation] ([TagAppRelationID], [TagID], [AppID]) VALUES (31, 7, 6)
INSERT [dbo].[TagAppRelation] ([TagAppRelationID], [TagID], [AppID]) VALUES (36, 8, 7)
INSERT [dbo].[TagAppRelation] ([TagAppRelationID], [TagID], [AppID]) VALUES (42, 10, 8)
INSERT [dbo].[TagAppRelation] ([TagAppRelationID], [TagID], [AppID]) VALUES (45, 10, 9)
INSERT [dbo].[TagAppRelation] ([TagAppRelationID], [TagID], [AppID]) VALUES (48, 10, 10)
INSERT [dbo].[TagAppRelation] ([TagAppRelationID], [TagID], [AppID]) VALUES (49, 13, 11)
INSERT [dbo].[TagAppRelation] ([TagAppRelationID], [TagID], [AppID]) VALUES (66, 10, 12)
INSERT [dbo].[TagAppRelation] ([TagAppRelationID], [TagID], [AppID]) VALUES (86, 30, 13)
INSERT [dbo].[TagAppRelation] ([TagAppRelationID], [TagID], [AppID]) VALUES (106, 30, 14)
INSERT [dbo].[TagAppRelation] ([TagAppRelationID], [TagID], [AppID]) VALUES (115, 33, 15)
INSERT [dbo].[TagAppRelation] ([TagAppRelationID], [TagID], [AppID]) VALUES (116, 34, 16)
SET IDENTITY_INSERT [dbo].[TagAppRelation] OFF
INSERT [dbo].[TempUpload] ([TempUploadID], [UserID], [AppID], [GalleryID], [RelatingUploadGuidForDelete]) VALUES (N'f3df6115-5668-4774-82ed-0437e47bfb03', 1, NULL, N'442bc212-1609-48d5-b24f-4b54fe7f7e09', N'807eeca9-35fe-4899-89e0-079449e1b6db')
INSERT [dbo].[TempUpload] ([TempUploadID], [UserID], [AppID], [GalleryID], [RelatingUploadGuidForDelete]) VALUES (N'5b4e5c7e-caab-4c77-8ba6-04999c986236', 1, NULL, N'6f48b0f8-f3d8-464d-b3a4-a087a2cf30f1', N'61dd3da2-07e9-4863-ac61-50930156905e')
INSERT [dbo].[TempUpload] ([TempUploadID], [UserID], [AppID], [GalleryID], [RelatingUploadGuidForDelete]) VALUES (N'd65056f9-fd7e-4e6c-a726-0be7134b6ce7', 1, NULL, N'fff5b890-6622-4d85-afc5-b2f66e309545', N'0dc17da2-10bc-4c15-a172-0b0ef7bb9e39')
INSERT [dbo].[TempUpload] ([TempUploadID], [UserID], [AppID], [GalleryID], [RelatingUploadGuidForDelete]) VALUES (N'f7d5f799-187d-4d36-b2ab-38bd960e6ba2', 1, NULL, N'ca39bae8-d6c0-4f8f-95e9-efe668f35527', N'807eeca9-35fe-4899-89e0-079449e1b6db')
INSERT [dbo].[TempUpload] ([TempUploadID], [UserID], [AppID], [GalleryID], [RelatingUploadGuidForDelete]) VALUES (N'637aa1ec-ecc0-4d48-bb5a-41b1a4ba9e1c', 1, NULL, N'6195a7f6-a63f-4dc3-9466-a3d3bbd3af68', N'807eeca9-35fe-4899-89e0-079449e1b6db')
INSERT [dbo].[TempUpload] ([TempUploadID], [UserID], [AppID], [GalleryID], [RelatingUploadGuidForDelete]) VALUES (N'2225496f-2cc0-461f-851e-43a087c7e6b9', 1, NULL, N'4da4b832-e724-4d11-92f3-19d5df852ea7', N'0dc17da2-10bc-4c15-a172-0b0ef7bb9e39')
INSERT [dbo].[TempUpload] ([TempUploadID], [UserID], [AppID], [GalleryID], [RelatingUploadGuidForDelete]) VALUES (N'05eb730d-2394-4b62-ab83-7e4750254911', 1, NULL, N'a1144730-96da-46ae-9525-db830f6f8566', N'807eeca9-35fe-4899-89e0-079449e1b6db')
INSERT [dbo].[TempUpload] ([TempUploadID], [UserID], [AppID], [GalleryID], [RelatingUploadGuidForDelete]) VALUES (N'afaa460f-0b9f-4516-bada-85b908506ad4', 1, NULL, N'c2279672-1417-47b1-924c-c5c164de8918', N'0dc17da2-10bc-4c15-a172-0b0ef7bb9e39')
INSERT [dbo].[TempUpload] ([TempUploadID], [UserID], [AppID], [GalleryID], [RelatingUploadGuidForDelete]) VALUES (N'9cfc6aa9-648f-421a-9fbf-94b464344219', 1, NULL, N'0be0c2d3-8ee6-4088-bd09-5b9a50286452', N'0dc17da2-10bc-4c15-a172-0b0ef7bb9e39')
INSERT [dbo].[TempUpload] ([TempUploadID], [UserID], [AppID], [GalleryID], [RelatingUploadGuidForDelete]) VALUES (N'041ac021-b1bb-4313-b9a9-951c012fe9de', 1, NULL, N'906bb29e-71eb-4a1c-b029-2bb3e4cd8f65', N'0dc17da2-10bc-4c15-a172-0b0ef7bb9e39')
INSERT [dbo].[TempUpload] ([TempUploadID], [UserID], [AppID], [GalleryID], [RelatingUploadGuidForDelete]) VALUES (N'ad8949ff-48e3-4dae-a06a-9b944415f617', 1, NULL, N'a92a79e9-2a91-4b83-b9d4-9ce270435cd2', N'98648fe8-8672-43d4-9767-2869c12e14da')
INSERT [dbo].[TempUpload] ([TempUploadID], [UserID], [AppID], [GalleryID], [RelatingUploadGuidForDelete]) VALUES (N'6c5594e9-f72a-4d8e-b06b-c054414ed573', 1, NULL, N'de8069b9-d273-41f3-b029-c3941c2a5615', N'807eeca9-35fe-4899-89e0-079449e1b6db')
INSERT [dbo].[TempUpload] ([TempUploadID], [UserID], [AppID], [GalleryID], [RelatingUploadGuidForDelete]) VALUES (N'182480e8-fdcb-4ab7-8a51-d59c5af13951', 1, NULL, N'2e0d226d-44a8-4340-99bc-915917e9738c', N'61dd3da2-07e9-4863-ac61-50930156905e')
INSERT [dbo].[TempUpload] ([TempUploadID], [UserID], [AppID], [GalleryID], [RelatingUploadGuidForDelete]) VALUES (N'9a5a442d-abff-4c19-b214-de7646f7a300', 1, NULL, N'1f1eb9d9-3bd7-4fe1-8903-97ebed58e96c', N'807eeca9-35fe-4899-89e0-079449e1b6db')
INSERT [dbo].[TempUpload] ([TempUploadID], [UserID], [AppID], [GalleryID], [RelatingUploadGuidForDelete]) VALUES (N'6b0f32f9-271b-4216-94b9-e4c03ad63093', 1, NULL, N'ee073ef0-7c2d-4d94-96f1-ba24e90e1d34', N'8435a280-7ead-418b-9b63-f29a0816ec7a')
INSERT [dbo].[User] ([UserID], [FirstName], [LastName], [Phone], [UserName], [TotalEarnedPoints]) VALUES (8, N'Alim', N'Karim', N'0183300201', N'Alim4', 0)
INSERT [dbo].[User] ([UserID], [FirstName], [LastName], [Phone], [UserName], [TotalEarnedPoints]) VALUES (7, N'alim', N'karim', NULL, N'alim', 0)
INSERT [dbo].[User] ([UserID], [FirstName], [LastName], [Phone], [UserName], [TotalEarnedPoints]) VALUES (1, N'Developer', N'WereViewApp', N'8801833002024', N'developer', 0)
SET IDENTITY_INSERT [dbo].[UserPointSetting] ON 

INSERT [dbo].[UserPointSetting] ([UserPointSettingID], [TaskName], [Point]) VALUES (1, N'Post App', 5)
INSERT [dbo].[UserPointSetting] ([UserPointSettingID], [TaskName], [Point]) VALUES (2, N'Review App', 6)
INSERT [dbo].[UserPointSetting] ([UserPointSettingID], [TaskName], [Point]) VALUES (3, N'Review Liked', 4)
SET IDENTITY_INSERT [dbo].[UserPointSetting] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [URLUnique]    Script Date: 23-Feb-16 2:39:47 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[App]') AND name = N'URLUnique')
ALTER TABLE [dbo].[App] ADD  CONSTRAINT [URLUnique] UNIQUE NONCLUSTERED 
(
	[PlatformID] ASC,
	[PlatformVersion] ASC,
	[Url] ASC,
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_App_1]    Script Date: 23-Feb-16 2:39:47 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[App]') AND name = N'IX_App_1')
CREATE UNIQUE NONCLUSTERED INDEX [IX_App_1] ON [dbo].[App]
(
	[UploadGuid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_App_TotalViewCount]    Script Date: 23-Feb-16 2:39:47 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[App]') AND name = N'IX_App_TotalViewCount')
CREATE NONCLUSTERED INDEX [IX_App_TotalViewCount] ON [dbo].[App]
(
	[TotalViewed] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Gallery]    Script Date: 23-Feb-16 2:39:47 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Gallery]') AND name = N'IX_Gallery')
CREATE NONCLUSTERED INDEX [IX_Gallery] ON [dbo].[Gallery]
(
	[UploadGuid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_GalleryCategory]    Script Date: 23-Feb-16 2:39:47 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[GalleryCategory]') AND name = N'IX_GalleryCategory')
CREATE NONCLUSTERED INDEX [IX_GalleryCategory] ON [dbo].[GalleryCategory]
(
	[GalleryCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_App_IsBlocked]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[App] ADD  CONSTRAINT [DF_App_IsBlocked]  DEFAULT ((0)) FOR [IsBlocked]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_App_IsPublished]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[App] ADD  CONSTRAINT [DF_App_IsPublished]  DEFAULT ((0)) FOR [IsPublished]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__tmp_ms_xx__Websi__420DC656]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[App] ADD  CONSTRAINT [DF__tmp_ms_xx__Websi__420DC656]  DEFAULT ((0)) FOR [WebsiteClicked]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__tmp_ms_xx__Store__4301EA8F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[App] ADD  CONSTRAINT [DF__tmp_ms_xx__Store__4301EA8F]  DEFAULT ((0)) FOR [StoreClicked]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__tmp_ms_xx__AvgRa__43F60EC8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[App] ADD  CONSTRAINT [DF__tmp_ms_xx__AvgRa__43F60EC8]  DEFAULT ((0)) FOR [AvgRating]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__tmp_ms_xx__IsBlo__7DEDA633]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AppDraft] ADD  DEFAULT ((0)) FOR [IsBlocked]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__tmp_ms_xx__IsPub__7EE1CA6C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AppDraft] ADD  DEFAULT ((0)) FOR [IsPublished]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__Category__Slug__222B06A9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Category] ADD  DEFAULT ('None') FOR [Slug]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__tmp_ms_xx__IsAdv__269AB60B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[GalleryCategory] ADD  DEFAULT ((0)) FOR [IsAdvertise]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Message_LastModified]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Message] ADD  CONSTRAINT [DF_Message_LastModified]  DEFAULT (getdate()) FOR [LastModified]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Message_SentDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Message] ADD  CONSTRAINT [DF_Message_SentDate]  DEFAULT (getdate()) FOR [SentDate]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_MessageSeen_LastModified]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[MessageSeen] ADD  CONSTRAINT [DF_MessageSeen_LastModified]  DEFAULT (getdate()) FOR [LastModified]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_MessageSeen_SentDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[MessageSeen] ADD  CONSTRAINT [DF_MessageSeen_SentDate]  DEFAULT (getdate()) FOR [SentDate]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__Notificat__IsGoo__2FBA0BF1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[NotificationType] ADD  DEFAULT ((0)) FOR [IsGood]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__tmp_ms_xx__Liked__74CE504D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Review] ADD  DEFAULT ((0)) FOR [LikedCount]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__tmp_ms_xx__DisLi__75C27486]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Review] ADD  DEFAULT ((0)) FOR [DisLikeCount]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__Review__CreatedD__42CCE065]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Review] ADD  DEFAULT (getdate()) FOR [CreatedDate]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__tmp_ms_xx__Total__01BE3717]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[User] ADD  DEFAULT ((0)) FOR [TotalEarnedPoints]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_UserPoint_Point]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[UserPoint] ADD  CONSTRAINT [DF_UserPoint_Point]  DEFAULT ((0)) FOR [Point]
END

GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_App_Category]') AND parent_object_id = OBJECT_ID(N'[dbo].[App]'))
ALTER TABLE [dbo].[App]  WITH CHECK ADD  CONSTRAINT [FK_App_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_App_Category]') AND parent_object_id = OBJECT_ID(N'[dbo].[App]'))
ALTER TABLE [dbo].[App] CHECK CONSTRAINT [FK_App_Category]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_App_Platform]') AND parent_object_id = OBJECT_ID(N'[dbo].[App]'))
ALTER TABLE [dbo].[App]  WITH CHECK ADD  CONSTRAINT [FK_App_Platform] FOREIGN KEY([PlatformID])
REFERENCES [dbo].[Platform] ([PlatformID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_App_Platform]') AND parent_object_id = OBJECT_ID(N'[dbo].[App]'))
ALTER TABLE [dbo].[App] CHECK CONSTRAINT [FK_App_Platform]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_App_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[App]'))
ALTER TABLE [dbo].[App]  WITH CHECK ADD  CONSTRAINT [FK_App_User] FOREIGN KEY([PostedByUserID])
REFERENCES [dbo].[User] ([UserID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_App_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[App]'))
ALTER TABLE [dbo].[App] CHECK CONSTRAINT [FK_App_User]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CellPhone_Platform]') AND parent_object_id = OBJECT_ID(N'[dbo].[CellPhone]'))
ALTER TABLE [dbo].[CellPhone]  WITH CHECK ADD  CONSTRAINT [FK_CellPhone_Platform] FOREIGN KEY([PlatformID])
REFERENCES [dbo].[Platform] ([PlatformID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CellPhone_Platform]') AND parent_object_id = OBJECT_ID(N'[dbo].[CellPhone]'))
ALTER TABLE [dbo].[CellPhone] CHECK CONSTRAINT [FK_CellPhone_Platform]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CellPhone_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[CellPhone]'))
ALTER TABLE [dbo].[CellPhone]  WITH CHECK ADD  CONSTRAINT [FK_CellPhone_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CellPhone_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[CellPhone]'))
ALTER TABLE [dbo].[CellPhone] CHECK CONSTRAINT [FK_CellPhone_User]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FeaturedImage_App]') AND parent_object_id = OBJECT_ID(N'[dbo].[FeaturedImage]'))
ALTER TABLE [dbo].[FeaturedImage]  WITH CHECK ADD  CONSTRAINT [FK_FeaturedImage_App] FOREIGN KEY([AppID])
REFERENCES [dbo].[App] ([AppID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FeaturedImage_App]') AND parent_object_id = OBJECT_ID(N'[dbo].[FeaturedImage]'))
ALTER TABLE [dbo].[FeaturedImage] CHECK CONSTRAINT [FK_FeaturedImage_App]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FeaturedImage_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[FeaturedImage]'))
ALTER TABLE [dbo].[FeaturedImage]  WITH CHECK ADD  CONSTRAINT [FK_FeaturedImage_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_FeaturedImage_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[FeaturedImage]'))
ALTER TABLE [dbo].[FeaturedImage] CHECK CONSTRAINT [FK_FeaturedImage_User]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Gallery_GalleryCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[Gallery]'))
ALTER TABLE [dbo].[Gallery]  WITH CHECK ADD  CONSTRAINT [FK_Gallery_GalleryCategory] FOREIGN KEY([GalleryCategoryID])
REFERENCES [dbo].[GalleryCategory] ([GalleryCategoryID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Gallery_GalleryCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[Gallery]'))
ALTER TABLE [dbo].[Gallery] CHECK CONSTRAINT [FK_Gallery_GalleryCategory]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LatestSeenNotification_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[LatestSeenNotification]'))
ALTER TABLE [dbo].[LatestSeenNotification]  WITH CHECK ADD  CONSTRAINT [FK_LatestSeenNotification_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LatestSeenNotification_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[LatestSeenNotification]'))
ALTER TABLE [dbo].[LatestSeenNotification] CHECK CONSTRAINT [FK_LatestSeenNotification_User]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Message_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[Message]'))
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK_Message_User] FOREIGN KEY([SenderUserID])
REFERENCES [dbo].[User] ([UserID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Message_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[Message]'))
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK_Message_User]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Message_User1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Message]'))
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK_Message_User1] FOREIGN KEY([ReceiverUserID])
REFERENCES [dbo].[User] ([UserID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Message_User1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Message]'))
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK_Message_User1]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MessageSeen_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[MessageSeen]'))
ALTER TABLE [dbo].[MessageSeen]  WITH CHECK ADD  CONSTRAINT [FK_MessageSeen_User] FOREIGN KEY([SenderUserID])
REFERENCES [dbo].[User] ([UserID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MessageSeen_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[MessageSeen]'))
ALTER TABLE [dbo].[MessageSeen] CHECK CONSTRAINT [FK_MessageSeen_User]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MessageSeen_User1]') AND parent_object_id = OBJECT_ID(N'[dbo].[MessageSeen]'))
ALTER TABLE [dbo].[MessageSeen]  WITH CHECK ADD  CONSTRAINT [FK_MessageSeen_User1] FOREIGN KEY([ReceiverUserID])
REFERENCES [dbo].[User] ([UserID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MessageSeen_User1]') AND parent_object_id = OBJECT_ID(N'[dbo].[MessageSeen]'))
ALTER TABLE [dbo].[MessageSeen] CHECK CONSTRAINT [FK_MessageSeen_User1]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Notification_NotificationType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Notification]'))
ALTER TABLE [dbo].[Notification]  WITH CHECK ADD  CONSTRAINT [FK_Notification_NotificationType] FOREIGN KEY([NotificationTypeID])
REFERENCES [dbo].[NotificationType] ([NotificationTypeID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Notification_NotificationType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Notification]'))
ALTER TABLE [dbo].[Notification] CHECK CONSTRAINT [FK_Notification_NotificationType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Review_App]') AND parent_object_id = OBJECT_ID(N'[dbo].[Review]'))
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [FK_Review_App] FOREIGN KEY([AppID])
REFERENCES [dbo].[App] ([AppID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Review_App]') AND parent_object_id = OBJECT_ID(N'[dbo].[Review]'))
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [FK_Review_App]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Review_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[Review]'))
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [FK_Review_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Review_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[Review]'))
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [FK_Review_User]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ReviewLikeDislike_Review]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReviewLikeDislike]'))
ALTER TABLE [dbo].[ReviewLikeDislike]  WITH CHECK ADD  CONSTRAINT [FK_ReviewLikeDislike_Review] FOREIGN KEY([ReviewID])
REFERENCES [dbo].[Review] ([ReviewID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ReviewLikeDislike_Review]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReviewLikeDislike]'))
ALTER TABLE [dbo].[ReviewLikeDislike] CHECK CONSTRAINT [FK_ReviewLikeDislike_Review]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ReviewLikeDislike_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReviewLikeDislike]'))
ALTER TABLE [dbo].[ReviewLikeDislike]  WITH CHECK ADD  CONSTRAINT [FK_ReviewLikeDislike_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ReviewLikeDislike_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReviewLikeDislike]'))
ALTER TABLE [dbo].[ReviewLikeDislike] CHECK CONSTRAINT [FK_ReviewLikeDislike_User]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TagAppRelation_App]') AND parent_object_id = OBJECT_ID(N'[dbo].[TagAppRelation]'))
ALTER TABLE [dbo].[TagAppRelation]  WITH CHECK ADD  CONSTRAINT [FK_TagAppRelation_App] FOREIGN KEY([AppID])
REFERENCES [dbo].[App] ([AppID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TagAppRelation_App]') AND parent_object_id = OBJECT_ID(N'[dbo].[TagAppRelation]'))
ALTER TABLE [dbo].[TagAppRelation] CHECK CONSTRAINT [FK_TagAppRelation_App]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TagAppRelation_Tag]') AND parent_object_id = OBJECT_ID(N'[dbo].[TagAppRelation]'))
ALTER TABLE [dbo].[TagAppRelation]  WITH CHECK ADD  CONSTRAINT [FK_TagAppRelation_Tag] FOREIGN KEY([TagID])
REFERENCES [dbo].[Tag] ([TagID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TagAppRelation_Tag]') AND parent_object_id = OBJECT_ID(N'[dbo].[TagAppRelation]'))
ALTER TABLE [dbo].[TagAppRelation] CHECK CONSTRAINT [FK_TagAppRelation_Tag]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserPoint_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserPoint]'))
ALTER TABLE [dbo].[UserPoint]  WITH CHECK ADD  CONSTRAINT [FK_UserPoint_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserPoint_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserPoint]'))
ALTER TABLE [dbo].[UserPoint] CHECK CONSTRAINT [FK_UserPoint_User]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserPoint_UserPointSetting]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserPoint]'))
ALTER TABLE [dbo].[UserPoint]  WITH CHECK ADD  CONSTRAINT [FK_UserPoint_UserPointSetting] FOREIGN KEY([UserPointSettingID])
REFERENCES [dbo].[UserPointSetting] ([UserPointSettingID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserPoint_UserPointSetting]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserPoint]'))
ALTER TABLE [dbo].[UserPoint] CHECK CONSTRAINT [FK_UserPoint_UserPointSetting]
GO
USE [master]
GO
ALTER DATABASE [D:\WORKING\GITHUB\WEREVIEWPROJECT\WEREVIEWAPP\APP_DATA\WEREVIEWAPP.MDF] SET  READ_WRITE 
GO
