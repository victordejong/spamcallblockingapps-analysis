.class public final Lcom/hiya/stingray/ui/local/f/m/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/ui/local/f/m/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/f/m/h;-><init>(Lcom/hiya/stingray/ui/local/f/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/ui/local/f/m/h;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/f/m/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/local/f/m/h$a;->a:Lcom/hiya/stingray/ui/local/f/m/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/m/h$a;->a:Lcom/hiya/stingray/ui/local/f/m/h;

    invoke-static {v0}, Lcom/hiya/stingray/ui/local/f/m/h;->f(Lcom/hiya/stingray/ui/local/f/m/h;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/ui/local/f/m/h$a$a;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/local/f/m/h$a$a;-><init>(Lcom/hiya/stingray/ui/local/f/m/h$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
