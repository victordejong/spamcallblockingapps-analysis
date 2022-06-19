.class public final synthetic Lcom/facebook/internal/u0/n/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# static fields
.field public static final synthetic a:Lcom/facebook/internal/u0/n/c;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/internal/u0/n/c;

    invoke-direct {v0}, Lcom/facebook/internal/u0/n/c;-><init>()V

    sput-object v0, Lcom/facebook/internal/u0/n/c;->a:Lcom/facebook/internal/u0/n/c;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 4

    const-string p1, "name"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ls1/f0/h;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "error_log_"

    aput-object v3, v1, v2

    const-string v2, "^%s[0-9]+.json$"

    const-string v3, "java.lang.String.format(format, *args)"

    invoke-static {v1, v0, v2, v3}, Le/d/c/a/a;->v([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ls1/f0/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ls1/f0/h;->d(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method
