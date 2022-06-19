.class public final Le/a/g/a/a/a$u;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g/a/a/a;->Mr(Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Lcom/truecaller/acs/util/VideoCallerIdAcsMoreOption;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/g/a/a/a;


# direct methods
.method public constructor <init>(Le/a/g/a/a/a;)V
    .locals 0

    iput-object p1, p0, Le/a/g/a/a/a$u;->b:Le/a/g/a/a/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/truecaller/acs/util/VideoCallerIdAcsMoreOption;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/g/a/a/a$u;->b:Le/a/g/a/a/a;

    .line 4
    iget-object v0, v0, Le/a/g/a/a/a;->n:Le/a/g/j/q0;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Le/a/g/j/q0;->a()V

    .line 6
    iget-object v0, p0, Le/a/g/a/a/a$u;->b:Le/a/g/a/a/a;

    invoke-virtual {v0}, Le/a/g/a/a/a;->VA()Le/a/g/a/a/g;

    move-result-object v0

    check-cast v0, Le/a/g/a/m;

    invoke-virtual {v0, p1}, Le/a/g/a/m;->mk(Lcom/truecaller/acs/util/VideoCallerIdAcsMoreOption;)V

    .line 7
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :cond_0
    const-string p1, "videoCallerIdOptionsPopUpManager"

    .line 8
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
