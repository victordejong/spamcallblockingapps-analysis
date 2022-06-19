.class public final Le/a/g/a/b/a$f;
.super Ln3/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g/a/b/a;->onAttach(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/g/a/b/a;


# direct methods
.method public constructor <init>(Le/a/g/a/b/a;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/g/a/b/a$f;->a:Le/a/g/a/b/a;

    invoke-direct {p0, p2}, Ln3/a/b;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/g/a/b/a$f;->a:Le/a/g/a/b/a;

    invoke-virtual {v0}, Le/a/g/a/b/a;->RA()Le/a/g/a/b/g;

    move-result-object v0

    check-cast v0, Le/a/g/a/b/l;

    .line 2
    invoke-virtual {v0}, Le/a/g/a/m;->Kk()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Lcom/truecaller/acs/analytics/DismissReason;->BACK_BUTTON:Lcom/truecaller/acs/analytics/DismissReason;

    invoke-virtual {v0, v1}, Le/a/g/a/m;->Jj(Lcom/truecaller/acs/analytics/DismissReason;)V

    .line 4
    :goto_0
    invoke-virtual {v0}, Le/a/g/a/b/l;->Wk()V

    return-void
.end method
