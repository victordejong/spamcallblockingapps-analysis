.class public final synthetic Le/m/a/h/a/g/g/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/h/a/g/g/t;


# instance fields
.field public final synthetic a:Le/m/a/h/a/g/g/u;


# direct methods
.method public synthetic constructor <init>(Le/m/a/h/a/g/g/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/h/a/g/g/s;->a:Le/m/a/h/a/g/g/u;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 8

    iget-object v0, p0, Le/m/a/h/a/g/g/s;->a:Le/m/a/h/a/g/g/u;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move-object v4, v2

    move-object v5, v4

    .line 1
    :goto_0
    iget-object v6, v0, Le/m/a/h/a/g/g/u;->a:Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    if-ge v3, v6, :cond_2

    iget-object v6, v0, Le/m/a/h/a/g/g/u;->a:Lorg/xmlpull/v1/XmlPullParser;

    .line 3
    invoke-interface {v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "module"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v4, v0, Le/m/a/h/a/g/g/u;->a:Lorg/xmlpull/v1/XmlPullParser;

    .line 4
    invoke-interface {v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    :cond_0
    iget-object v6, v0, Le/m/a/h/a/g/g/u;->a:Lorg/xmlpull/v1/XmlPullParser;

    .line 5
    invoke-interface {v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "errorCode"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v5, v0, Le/m/a/h/a/g/g/u;->a:Lorg/xmlpull/v1/XmlPullParser;

    .line 6
    invoke-interface {v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_5

    if-eqz v5, :cond_5

    .line 7
    iget-object v1, v0, Le/m/a/h/a/g/g/u;->b:Le/m/a/h/a/g/g/b;

    .line 8
    invoke-static {v5}, Le/m/a/h/a/g/f/a;->a(Ljava/lang/String;)I

    move-result v2

    .line 9
    iget-object v1, v1, Le/m/a/h/a/g/g/b;->b:Ljava/util/Map;

    if-eqz v1, :cond_4

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, v0, Le/m/a/h/a/g/g/u;->a:Lorg/xmlpull/v1/XmlPullParser;

    .line 11
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    return-void

    .line 12
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Property \"splitInstallErrorCodeByModule\" has not been set"

    .line 13
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_5
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "split-install-error"

    aput-object v5, v4, v1

    const-string v1, "\'%s\' element does not contain \'module\'/\'errorCode\' attributes."

    .line 15
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Le/m/a/h/a/g/g/u;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v3, v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v3
.end method
