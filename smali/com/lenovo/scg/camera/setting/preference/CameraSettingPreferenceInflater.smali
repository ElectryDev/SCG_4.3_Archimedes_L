.class public Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceInflater;
.super Ljava/lang/Object;
.source "CameraSettingPreferenceInflater.java"


# static fields
.field private static final CTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final PACKAGE_NAME:Ljava/lang/String;

.field private static final sConstructorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const-class v0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceInflater;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceInflater;->PACKAGE_NAME:Ljava/lang/String;

    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceInflater;->CTOR_SIGNATURE:[Ljava/lang/Class;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceInflater;->sConstructorMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceInflater;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method

.method private inflate(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference;
    .locals 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 76
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 77
    .local v1, "attrs":Landroid/util/AttributeSet;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference;>;"
    new-array v0, v10, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceInflater;->mContext:Landroid/content/Context;

    aput-object v7, v0, v9

    aput-object v1, v0, v8

    .line 81
    .local v0, "args":[Ljava/lang/Object;
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .local v6, "type":I
    :goto_0
    if-eq v6, v8, :cond_3

    .line 82
    if-eq v6, v10, :cond_1

    .line 81
    :cond_0
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    goto :goto_0

    .line 83
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v0}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceInflater;->newPreference(Ljava/lang/String;[Ljava/lang/Object;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference;

    move-result-object v5

    .line 85
    .local v5, "pref":Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 86
    .local v2, "depth":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v2, v7, :cond_2

    .line 87
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    :goto_2
    if-le v2, v8, :cond_0

    .line 92
    add-int/lit8 v7, v2, -0x2

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    invoke-virtual {v7, v5}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->addChild(Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 100
    .end local v2    # "depth":I
    .end local v5    # "pref":Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference;
    .end local v6    # "type":I
    :catch_0
    move-exception v3

    .line 101
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v7, Landroid/view/InflateException;

    invoke-direct {v7, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 89
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2    # "depth":I
    .restart local v5    # "pref":Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference;
    .restart local v6    # "type":I
    :cond_2
    add-int/lit8 v7, v2, -0x1

    :try_start_1
    invoke-virtual {v4, v7, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 102
    .end local v2    # "depth":I
    .end local v5    # "pref":Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference;
    .end local v6    # "type":I
    :catch_1
    move-exception v3

    .line 103
    .local v3, "e":Ljava/io/IOException;
    new-instance v7, Landroid/view/InflateException;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 96
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v6    # "type":I
    :cond_3
    :try_start_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_4

    .line 97
    new-instance v7, Landroid/view/InflateException;

    const-string v8, "No root element found"

    invoke-direct {v7, v8}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 99
    :cond_4
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v7
.end method

.method private newPreference(Ljava/lang/String;[Ljava/lang/Object;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference;
    .locals 7
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 54
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceInflater;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, "name":Ljava/lang/String;
    sget-object v4, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceInflater;->sConstructorMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    .line 57
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    if-nez v1, :cond_0

    .line 60
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 61
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v4, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceInflater;->CTOR_SIGNATURE:[Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 62
    sget-object v4, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceInflater;->sConstructorMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    invoke-virtual {v1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    return-object v4

    .line 65
    :catch_0
    move-exception v2

    .line 66
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    new-instance v4, Landroid/view/InflateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error inflating class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 67
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v2

    .line 68
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    new-instance v4, Landroid/view/InflateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No such class: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 69
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v2

    .line 70
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Landroid/view/InflateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "While create instance of"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method


# virtual methods
.method public inflate(I)Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference;

    move-result-object v0

    return-object v0
.end method
