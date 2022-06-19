.class public final Le/m/a/h/a/g/g/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Le/m/a/h/a/d/g;


# instance fields
.field public final a:Lorg/xmlpull/v1/XmlPullParser;

.field public final b:Le/m/a/h/a/g/g/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/m/a/h/a/d/g;

    const-string v1, "LocalTestingConfigParser"

    .line 1
    invoke-direct {v0, v1}, Le/m/a/h/a/d/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Le/m/a/h/a/g/g/u;->c:Le/m/a/h/a/d/g;

    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/h/a/g/g/u;->a:Lorg/xmlpull/v1/XmlPullParser;

    .line 1
    sget-object p1, Le/m/a/h/a/g/g/p;->a:Le/m/a/h/a/g/g/p;

    new-instance p1, Le/m/a/h/a/g/g/b;

    invoke-direct {p1}, Le/m/a/h/a/g/g/b;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    iput-object v0, p1, Le/m/a/h/a/g/g/b;->b:Ljava/util/Map;

    .line 4
    iput-object p1, p0, Le/m/a/h/a/g/g/u;->b:Le/m/a/h/a/g/g/b;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Le/m/a/h/a/g/g/t;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    :cond_0
    :goto_0
    iget-object v0, p0, Le/m/a/h/a/g/g/u;->a:Lorg/xmlpull/v1/XmlPullParser;

    .line 1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Le/m/a/h/a/g/g/u;->a:Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Le/m/a/h/a/g/g/u;->a:Lorg/xmlpull/v1/XmlPullParser;

    .line 3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {p2}, Le/m/a/h/a/g/g/t;->zza()V

    goto :goto_0

    .line 5
    :cond_2
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    iget-object p1, p0, Le/m/a/h/a/g/g/u;->a:Lorg/xmlpull/v1/XmlPullParser;

    .line 6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Expected \'%s\' tag but found \'%s\'."

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Le/m/a/h/a/g/g/u;->a:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v1, 0x0

    invoke-direct {p2, p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw p2

    :cond_3
    :goto_1
    return-void
.end method
