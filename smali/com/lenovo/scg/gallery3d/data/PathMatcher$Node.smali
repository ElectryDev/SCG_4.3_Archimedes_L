.class Lcom/lenovo/scg/gallery3d/data/PathMatcher$Node;
.super Ljava/lang/Object;
.source "PathMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/data/PathMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Node"
.end annotation


# instance fields
.field private mKind:I

.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lenovo/scg/gallery3d/data/PathMatcher$Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/data/PathMatcher$Node;->mKind:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/data/PathMatcher$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/data/PathMatcher$1;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/data/PathMatcher$Node;-><init>()V

    return-void
.end method


# virtual methods
.method addChild(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/PathMatcher$Node;
    .locals 3
    .param p1, "segment"    # Ljava/lang/String;

    .prologue
    .line 81
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/PathMatcher$Node;->mMap:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 82
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/data/PathMatcher$Node;->mMap:Ljava/util/HashMap;

    .line 88
    :cond_0
    new-instance v0, Lcom/lenovo/scg/gallery3d/data/PathMatcher$Node;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/data/PathMatcher$Node;-><init>()V

    .line 89
    .local v0, "n":Lcom/lenovo/scg/gallery3d/data/PathMatcher$Node;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/PathMatcher$Node;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 90
    .end local v0    # "n":Lcom/lenovo/scg/gallery3d/data/PathMatcher$Node;
    :goto_0
    return-object v1

    .line 84
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/PathMatcher$Node;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/data/PathMatcher$Node;

    .line 85
    .local v1, "node":Lcom/lenovo/scg/gallery3d/data/PathMatcher$Node;
    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method getChild(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/PathMatcher$Node;
    .locals 1
    .param p1, "segment"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/PathMatcher$Node;->mMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 95
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/PathMatcher$Node;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/data/PathMatcher$Node;

    goto :goto_0
.end method

.method getKind()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/lenovo/scg/gallery3d/data/PathMatcher$Node;->mKind:I

    return v0
.end method

.method setKind(I)V
    .locals 0
    .param p1, "kind"    # I

    .prologue
    .line 99
    iput p1, p0, Lcom/lenovo/scg/gallery3d/data/PathMatcher$Node;->mKind:I

    .line 100
    return-void
.end method
