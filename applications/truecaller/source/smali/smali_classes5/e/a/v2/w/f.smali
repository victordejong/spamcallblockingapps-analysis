.class public final Le/a/v2/w/f;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Le/a/b0/b/a/b;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Le/a/v2/w/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/v2/w/f;

    invoke-direct {v0}, Le/a/v2/w/f;-><init>()V

    sput-object v0, Le/a/v2/w/f;->b:Le/a/v2/w/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Le/a/b0/b/a/b;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Le/a/b0/b/g/b;

    invoke-direct {v0}, Le/a/b0/b/g/b;-><init>()V

    .line 4
    sget-object v1, Lcom/truecaller/common/network/util/AuthRequirement;->NONE:Lcom/truecaller/common/network/util/AuthRequirement;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Le/a/b0/b/g/b;->c(Le/a/b0/b/g/b;Lcom/truecaller/common/network/util/AuthRequirement;Ljava/lang/String;ILjava/lang/Object;)Le/a/b0/b/g/b;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Le/a/b0/b/g/b;->d(Z)Le/a/b0/b/g/b;

    .line 6
    invoke-static {v0}, Le/a/b0/b/a/a;->a(Le/a/b0/b/g/b;)Lu3/e0;

    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Le/a/b0/b/a/b;->d(Lu3/e0;)Le/a/b0/b/a/b;

    .line 8
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
