.class public final Lcom/hiya/stingray/ui/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/hiya/stingray/manager/e1;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/manager/e1;)V
    .locals 1

    const-string v0, "analyticsManager"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/i;->a:Lcom/hiya/stingray/manager/e1;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/i;->a:Lcom/hiya/stingray/manager/e1;

    const-string v1, "android.permission-group.CALL_LOG"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/hiya/stingray/util/f;->c(Lcom/hiya/stingray/manager/e1;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/i;->a:Lcom/hiya/stingray/manager/e1;

    const-string v1, "lookup"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/hiya/stingray/util/f;->c(Lcom/hiya/stingray/manager/e1;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
