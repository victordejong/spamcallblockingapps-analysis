.class final Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->z1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$k;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$k;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    .line 2
    sget p1, Lcom/hiya/stingray/o;->S:I

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->f1(I)Landroid/view/View;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/widget/TextView;

    const-string p1, "callerIdStyleDesc"

    invoke-static {v2, p1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$k;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->p1()Lcom/hiya/stingray/manager/j2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/j2;->a()Z

    move-result v3

    const/4 p1, 0x2

    new-array v1, p1, [Ljava/lang/Integer;

    const v4, 0x7f110079

    .line 4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v1, v5

    const v4, 0x7f11007a

    .line 5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v1, v6

    .line 6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x0

    :goto_0
    if-ge v6, p1, :cond_0

    .line 7
    aget-object v7, v1, v6

    .line 8
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 9
    iget-object v8, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$k;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;

    invoke-virtual {v8, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    new-array p1, v5, [Ljava/lang/String;

    .line 10
    invoke-interface {v4, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 11
    new-instance v7, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$k$a;

    invoke-direct {v7, p0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$k$a;-><init>(Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$k;)V

    const v1, 0x7f110078

    .line 12
    invoke-static/range {v0 .. v7}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;->k1(Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment;ILandroid/widget/TextView;Z[Ljava/lang/String;ZLjava/lang/String;Lkotlin/w/b/l;)V

    return-void
.end method
