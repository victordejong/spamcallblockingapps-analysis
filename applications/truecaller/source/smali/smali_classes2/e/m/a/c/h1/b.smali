.class public final synthetic Le/m/a/c/h1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/h1/h$g;


# static fields
.field public static final synthetic a:Le/m/a/c/h1/b;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/m/a/c/h1/b;

    invoke-direct {v0}, Le/m/a/c/h1/b;-><init>()V

    sput-object v0, Le/m/a/c/h1/b;->a:Le/m/a/c/h1/b;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Le/m/a/c/h1/e;

    .line 1
    sget-object v0, Le/m/a/c/h1/h;->a:Ljava/util/regex/Pattern;

    .line 2
    iget-object p1, p1, Le/m/a/c/h1/e;->a:Ljava/lang/String;

    const-string v0, "OMX.google"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
