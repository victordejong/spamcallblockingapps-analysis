.class final Lcom/hiya/stingray/ui/w/l$v$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/w/l$v;->a(Lcom/hiya/stingray/t/h1/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/w/l$v;

.field final synthetic g:Lcom/hiya/stingray/t/h1/i;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/w/l$v;Lcom/hiya/stingray/t/h1/i;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/w/l$v$a;->f:Lcom/hiya/stingray/ui/w/l$v;

    iput-object p2, p0, Lcom/hiya/stingray/ui/w/l$v$a;->g:Lcom/hiya/stingray/t/h1/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/l$v$a;->f:Lcom/hiya/stingray/ui/w/l$v;

    iget-object v0, v0, Lcom/hiya/stingray/ui/w/l$v;->f:Lcom/hiya/stingray/ui/w/l;

    iget-object v1, p0, Lcom/hiya/stingray/ui/w/l$v$a;->g:Lcom/hiya/stingray/t/h1/i;

    invoke-static {v0, v1}, Lcom/hiya/stingray/ui/w/l;->H(Lcom/hiya/stingray/ui/w/l;Lcom/hiya/stingray/t/h1/i;)V

    return-void
.end method
