.class public final synthetic Lcom/hiya/stingray/manager/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/g;


# instance fields
.field public final synthetic f:Lcom/hiya/stingray/manager/c2;


# direct methods
.method public synthetic constructor <init>(Lcom/hiya/stingray/manager/c2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/n0;->f:Lcom/hiya/stingray/manager/c2;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/manager/n0;->f:Lcom/hiya/stingray/manager/c2;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/manager/c2;->o(Ljava/lang/String;)Lg/g/a/a/i/d;

    move-result-object p1

    return-object p1
.end method
