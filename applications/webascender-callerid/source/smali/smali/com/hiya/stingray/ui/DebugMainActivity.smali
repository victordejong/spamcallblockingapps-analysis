.class public final Lcom/hiya/stingray/ui/DebugMainActivity;
.super Lcom/hiya/stingray/ui/local/MainActivity;
.source "SourceFile"


# instance fields
.field private S:[Lcom/hiya/stingray/ui/local/MainActivity$c;

.field private T:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/MainActivity;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/hiya/stingray/ui/local/MainActivity$c;

    .line 2
    new-instance v8, Lcom/hiya/stingray/ui/local/MainActivity$c;

    const-class v3, Lcom/hiya/stingray/ui/local/g/a;

    const v2, 0x7f0801ab

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/hiya/stingray/ui/local/MainActivity$c;-><init>(ILjava/lang/Class;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/w/c/g;)V

    const/4 v1, 0x0

    aput-object v8, v0, v1

    invoke-super {p0}, Lcom/hiya/stingray/ui/local/MainActivity;->Z()[Lcom/hiya/stingray/ui/local/MainActivity$c;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/s/e;->j([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hiya/stingray/ui/local/MainActivity$c;

    iput-object v0, p0, Lcom/hiya/stingray/ui/DebugMainActivity;->S:[Lcom/hiya/stingray/ui/local/MainActivity$c;

    return-void
.end method


# virtual methods
.method public O(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/hiya/stingray/ui/DebugMainActivity;->T:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hiya/stingray/ui/DebugMainActivity;->T:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/DebugMainActivity;->T:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/ui/DebugMainActivity;->T:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected Z()[Lcom/hiya/stingray/ui/local/MainActivity$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/DebugMainActivity;->S:[Lcom/hiya/stingray/ui/local/MainActivity$c;

    return-object v0
.end method

.method protected i0([Lcom/hiya/stingray/ui/local/MainActivity$c;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/DebugMainActivity;->S:[Lcom/hiya/stingray/ui/local/MainActivity$c;

    return-void
.end method
