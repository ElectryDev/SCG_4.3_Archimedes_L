.class Lcom/lenovo/scg/gallery3d/data/DataManager$DateTakenComparator;
.super Ljava/lang/Object;
.source "DataManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/data/DataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DateTakenComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/lenovo/scg/gallery3d/data/MediaItem;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/data/DataManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/data/DataManager$1;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/data/DataManager$DateTakenComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/lenovo/scg/gallery3d/data/MediaItem;Lcom/lenovo/scg/gallery3d/data/MediaItem;)I
    .locals 4
    .param p1, "item1"    # Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .param p2, "item2"    # Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .prologue
    .line 123
    if-nez p1, :cond_0

    .line 124
    const-string/jumbo v0, "warning , compare item1 = null"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 125
    const/4 v0, -0x1

    .line 131
    :goto_0
    return v0

    .line 127
    :cond_0
    if-nez p2, :cond_1

    .line 128
    const-string/jumbo v0, "warning , compare item2 = null"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 129
    const/4 v0, 0x1

    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->compare(JJ)I

    move-result v0

    neg-int v0, v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 119
    check-cast p1, Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/data/DataManager$DateTakenComparator;->compare(Lcom/lenovo/scg/gallery3d/data/MediaItem;Lcom/lenovo/scg/gallery3d/data/MediaItem;)I

    move-result v0

    return v0
.end method
