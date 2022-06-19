.class final Lcom/hiya/stingray/f$d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/f$d;->a(Lcom/hiya/stingray/f$b;)Li/c/b0/b/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/o<",
        "Ljava/lang/Throwable;",
        "Lcom/hiya/stingray/f$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/f$b;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/f$b;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/f$d$b;->f:Lcom/hiya/stingray/f$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)Lcom/hiya/stingray/f$b;
    .locals 4

    const-string v0, "CallLifecycleHandler"

    .line 1
    invoke-static {v0}, Lr/a/a;->j(Ljava/lang/String;)Lr/a/a$c;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Failed to get contact information."

    invoke-virtual {v0, p1, v3, v2}, Lr/a/a$c;->g(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/f$d$b;->f:Lcom/hiya/stingray/f$b;

    invoke-virtual {p1, v1}, Lcom/hiya/stingray/f$b;->g(Z)V

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/f$d$b;->a(Ljava/lang/Throwable;)Lcom/hiya/stingray/f$b;

    move-result-object p1

    return-object p1
.end method
