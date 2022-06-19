.class public final synthetic Le/a/h0/a/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/truecaller/ui/components/ComboBase$a;


# instance fields
.field public final synthetic a:Le/a/h0/a/r;


# direct methods
.method public synthetic constructor <init>(Le/a/h0/a/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h0/a/m;->a:Le/a/h0/a/r;

    return-void
.end method


# virtual methods
.method public final a(Lcom/truecaller/ui/components/ComboBase;)V
    .locals 1

    iget-object v0, p0, Le/a/h0/a/m;->a:Le/a/h0/a/r;

    .line 1
    iget-object v0, v0, Le/a/h0/a/r;->b:Le/a/h0/a/s;

    invoke-virtual {p1}, Lcom/truecaller/ui/components/ComboBase;->getSelection()Le/a/e/c2/i0;

    move-result-object p1

    invoke-virtual {p1}, Le/a/e/c2/i0;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Le/a/h0/a/s;->Ij(I)V

    return-void
.end method
