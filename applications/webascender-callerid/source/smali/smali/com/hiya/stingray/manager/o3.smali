.class public Lcom/hiya/stingray/manager/o3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/hiya/stingray/manager/h4;

.field private final b:Lcom/hiya/stingray/q/d/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hiya/stingray/manager/h4;Lcom/hiya/stingray/q/d/a;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "userAccountManager"

    invoke-static {p2, p1}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "commonSharedPreferences"

    invoke-static {p3, p1}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/hiya/stingray/manager/o3;->a:Lcom/hiya/stingray/manager/h4;

    iput-object p3, p0, Lcom/hiya/stingray/manager/o3;->b:Lcom/hiya/stingray/q/d/a;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o3;->a:Lcom/hiya/stingray/manager/h4;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/h4;->b()Z

    move-result v0

    return v0
.end method

.method public final c(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o3;->b:Lcom/hiya/stingray/q/d/a;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/d/a;->p0(Z)V

    return-void
.end method
