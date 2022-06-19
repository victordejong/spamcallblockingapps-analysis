.class public final synthetic Le/a/e/c2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/ui/components/ComboBase;


# direct methods
.method public synthetic constructor <init>(Lcom/truecaller/ui/components/ComboBase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/c2/d;->a:Lcom/truecaller/ui/components/ComboBase;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Le/a/e/c2/d;->a:Lcom/truecaller/ui/components/ComboBase;

    .line 1
    iget-object v0, p1, Lcom/truecaller/ui/components/ComboBase;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/e/c2/i0;

    invoke-virtual {p1, p2}, Lcom/truecaller/ui/components/ComboBase;->setSelection(Le/a/e/c2/i0;)V

    .line 2
    invoke-virtual {p1}, Lcom/truecaller/ui/components/ComboBase;->b()V

    return-void
.end method
