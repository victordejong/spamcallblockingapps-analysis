.class final Lcom/hiya/stingray/manager/u3$y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/u3;->N()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/g<",
        "Lcom/hiya/stingray/manager/u3$n;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lcom/hiya/stingray/manager/u3$y;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hiya/stingray/manager/u3$y;

    invoke-direct {v0}, Lcom/hiya/stingray/manager/u3$y;-><init>()V

    sput-object v0, Lcom/hiya/stingray/manager/u3$y;->f:Lcom/hiya/stingray/manager/u3$y;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/stingray/manager/u3$n;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/hiya/stingray/manager/u3$n;->a()Lcom/android/billingclient/api/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/billingclient/api/g;->b()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    new-instance v0, Lcom/hiya/stingray/manager/u3$d;

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/u3$n;->a()Lcom/android/billingclient/api/g;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/hiya/stingray/manager/u3$d;-><init>(Lcom/android/billingclient/api/g;Ljava/lang/String;ZZILkotlin/w/c/g;)V

    invoke-static {v0}, Lr/a/a;->e(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/manager/u3$n;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/u3$y;->a(Lcom/hiya/stingray/manager/u3$n;)V

    return-void
.end method
