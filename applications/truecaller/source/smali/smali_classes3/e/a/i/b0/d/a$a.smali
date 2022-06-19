.class public final Le/a/i/b0/d/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/i/b0/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Le/a/i/b0/d/a$a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Le/a/i/b0/d/a;
    .locals 2

    .line 1
    new-instance v0, Le/a/i/b0/d/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/a/i/b0/d/a;-><init>(Le/a/i/b0/d/a$a;Ls1/z/c/f;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Le/a/i/b0/d/a$a;
    .locals 1

    const-string v0, "phoneNumber"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/i/b0/d/a$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public varargs c([Ljava/lang/String;)Le/a/i/b0/d/a$a;
    .locals 1

    const-string v0, "placements"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->h3([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Le/a/i/b0/d/a$a;->b:Ljava/util/List;

    return-object p0
.end method
