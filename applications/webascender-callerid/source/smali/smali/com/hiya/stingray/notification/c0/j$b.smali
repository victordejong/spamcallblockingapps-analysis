.class final Lcom/hiya/stingray/notification/c0/j$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/notification/c0/j;->a(Lcom/hiya/stingray/t/s0;Landroid/content/Context;Lcom/hiya/stingray/notification/p;Lcom/hiya/stingray/ui/o;ZLg/g/b/c/r;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/notification/c0/j;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/notification/c0/j;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/notification/c0/j$b;->f:Lcom/hiya/stingray/notification/c0/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/notification/c0/j$b;->f:Lcom/hiya/stingray/notification/c0/j;

    invoke-static {v0}, Lcom/hiya/stingray/notification/c0/j;->m(Lcom/hiya/stingray/notification/c0/j;)Li/c/b0/c/c;

    move-result-object v0

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    return-void
.end method
