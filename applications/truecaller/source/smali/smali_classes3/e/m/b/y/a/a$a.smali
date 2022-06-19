.class public final Le/m/b/y/a/a$a;
.super Le/m/b/x/a/e/d/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/b/y/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Le/m/b/x/b/t;Le/m/b/x/c/c;Le/m/b/x/b/p;)V
    .locals 7

    const-string v3, "https://www.googleapis.com/"

    const-string v4, "drive/v3/"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 1
    invoke-direct/range {v0 .. v6}, Le/m/b/x/a/e/d/a$a;-><init>(Le/m/b/x/b/t;Le/m/b/x/c/c;Ljava/lang/String;Ljava/lang/String;Le/m/b/x/b/p;Z)V

    const-string p1, "batch/drive/v3"

    .line 2
    iput-object p1, p0, Le/m/b/x/a/e/a$a;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Le/m/b/x/a/e/a$a;
    .locals 0

    .line 1
    invoke-static {p1}, Le/m/b/x/a/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le/m/b/x/a/e/a$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Le/m/b/x/a/e/a$a;
    .locals 0

    .line 1
    invoke-static {p1}, Le/m/b/x/a/e/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le/m/b/x/a/e/a$a;->e:Ljava/lang/String;

    return-object p0
.end method
