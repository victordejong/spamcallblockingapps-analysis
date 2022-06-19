.class public final synthetic Lcom/hiya/stingray/notification/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# instance fields
.field public final synthetic f:Lcom/hiya/stingray/notification/s;


# direct methods
.method public synthetic constructor <init>(Lcom/hiya/stingray/notification/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/notification/a;->f:Lcom/hiya/stingray/notification/s;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/notification/a;->f:Lcom/hiya/stingray/notification/s;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/notification/s;->g(Ljava/lang/Throwable;)V

    return-void
.end method
