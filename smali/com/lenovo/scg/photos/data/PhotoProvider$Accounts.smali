.class public interface abstract Lcom/lenovo/scg/photos/data/PhotoProvider$Accounts;
.super Ljava/lang/Object;
.source "PhotoProvider.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/photos/data/PhotoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Accounts"
.end annotation


# static fields
.field public static final ACCOUNT_NAME:Ljava/lang/String; = "name"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final TABLE:Ljava/lang/String; = "accounts"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 84
    sget-object v0, Lcom/lenovo/scg/photos/data/PhotoProvider;->BASE_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "accounts"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/photos/data/PhotoProvider$Accounts;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method