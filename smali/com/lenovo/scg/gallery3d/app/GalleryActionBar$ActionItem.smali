.class Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;
.super Ljava/lang/Object;
.source "GalleryActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActionItem"
.end annotation


# instance fields
.field public action:I

.field public clusterBy:I

.field public dialogTitle:I

.field public enabled:Z

.field public spinnerTitle:I

.field public visible:Z


# direct methods
.method public constructor <init>(IZZII)V
    .locals 7
    .param p1, "action"    # I
    .param p2, "applied"    # Z
    .param p3, "enabled"    # Z
    .param p4, "title"    # I
    .param p5, "clusterBy"    # I

    .prologue
    .line 104
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;-><init>(IZZIII)V

    .line 105
    return-void
.end method

.method public constructor <init>(IZZIII)V
    .locals 1
    .param p1, "action"    # I
    .param p2, "applied"    # Z
    .param p3, "enabled"    # Z
    .param p4, "spinnerTitle"    # I
    .param p5, "dialogTitle"    # I
    .param p6, "clusterBy"    # I

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput p1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;->action:I

    .line 109
    iput-boolean p3, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;->enabled:Z

    .line 110
    iput p4, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;->spinnerTitle:I

    .line 111
    iput p5, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;->dialogTitle:I

    .line 112
    iput p6, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;->clusterBy:I

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;->visible:Z

    .line 114
    return-void
.end method
