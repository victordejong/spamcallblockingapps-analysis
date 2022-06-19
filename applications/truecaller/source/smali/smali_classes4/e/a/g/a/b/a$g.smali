.class public final Le/a/g/a/b/a$g;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g/a/b/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/g/a/b/a;


# direct methods
.method public constructor <init>(Le/a/g/a/b/a;)V
    .locals 0

    iput-object p1, p0, Le/a/g/a/b/a$g;->b:Le/a/g/a/b/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/g/a/b/a$g;->b:Le/a/g/a/b/a;

    invoke-virtual {v0}, Le/a/g/a/b/a;->RA()Le/a/g/a/b/g;

    move-result-object v0

    check-cast v0, Le/a/g/a/b/l;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Lcom/truecaller/acs/analytics/DismissReason;->SWIPED_TO_DISMISS:Lcom/truecaller/acs/analytics/DismissReason;

    invoke-virtual {v0, v1}, Le/a/g/a/m;->Jj(Lcom/truecaller/acs/analytics/DismissReason;)V

    .line 4
    invoke-virtual {v0}, Le/a/g/a/b/l;->Wk()V

    .line 5
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
