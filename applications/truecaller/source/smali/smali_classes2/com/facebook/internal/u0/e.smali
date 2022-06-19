.class public final synthetic Lcom/facebook/internal/u0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# static fields
.field public static final synthetic a:Lcom/facebook/internal/u0/e;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/internal/u0/e;

    invoke-direct {v0}, Lcom/facebook/internal/u0/e;-><init>()V

    sput-object v0, Lcom/facebook/internal/u0/e;->a:Lcom/facebook/internal/u0/e;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3

    const-string p1, "name"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array v0, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "anr_log_"

    aput-object v2, v0, v1

    const-string v1, "^%s[0-9]+.json$"

    const-string v2, "java.lang.String.format(format, *args)"

    invoke-static {v0, p1, v1, v2}, Le/d/c/a/a;->v([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Le/d/c/a/a;->Z0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
