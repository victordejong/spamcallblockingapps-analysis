.class final Lcom/hiya/stingray/ui/local/f/k$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/f/k;->X([Lcom/hiya/stingray/ui/local/f/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/f/k;

.field final synthetic g:[Lcom/hiya/stingray/ui/local/f/f;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/f/k;[Lcom/hiya/stingray/ui/local/f/f;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/f/k$b;->f:Lcom/hiya/stingray/ui/local/f/k;

    iput-object p2, p0, Lcom/hiya/stingray/ui/local/f/k$b;->g:[Lcom/hiya/stingray/ui/local/f/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/k$b;->f:Lcom/hiya/stingray/ui/local/f/k;

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/f/k$b;->g:[Lcom/hiya/stingray/ui/local/f/f;

    invoke-static {v0, v1}, Lcom/hiya/stingray/ui/local/f/k;->h1(Lcom/hiya/stingray/ui/local/f/k;[Lcom/hiya/stingray/ui/local/f/f;)V

    return-void
.end method
