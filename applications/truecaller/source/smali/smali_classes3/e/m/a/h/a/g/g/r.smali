.class public final synthetic Le/m/a/h/a/g/g/r;
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

    iput-object p1, p0, Le/m/a/h/a/g/g/r;->a:Le/m/a/h/a/g/g/u;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 4

    iget-object v0, p0, Le/m/a/h/a/g/g/r;->a:Le/m/a/h/a/g/g/u;

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, v0, Le/m/a/h/a/g/g/u;->a:Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, v0, Le/m/a/h/a/g/g/u;->a:Lorg/xmlpull/v1/XmlPullParser;

    .line 3
    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "defaultErrorCode"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Le/m/a/h/a/g/g/u;->b:Le/m/a/h/a/g/g/b;

    iget-object v3, v0, Le/m/a/h/a/g/g/u;->a:Lorg/xmlpull/v1/XmlPullParser;

    .line 4
    invoke-interface {v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Le/m/a/h/a/g/f/a;->a(Ljava/lang/String;)I

    move-result v3

    .line 5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Le/m/a/h/a/g/g/b;->a:Ljava/lang/Integer;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    new-instance v1, Le/m/a/h/a/g/g/s;

    .line 7
    invoke-direct {v1, v0}, Le/m/a/h/a/g/g/s;-><init>(Le/m/a/h/a/g/g/u;)V

    const-string v2, "split-install-error"

    invoke-virtual {v0, v2, v1}, Le/m/a/h/a/g/g/u;->a(Ljava/lang/String;Le/m/a/h/a/g/g/t;)V

    return-void
.end method
