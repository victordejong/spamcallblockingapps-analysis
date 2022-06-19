.class final Lg/g/a/a/i/n/g$c;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/g/a/a/i/n/g;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/a<",
        "Lcom/google/gson/t<",
        "Lg/g/a/a/i/o/n;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lg/g/a/a/i/n/g;


# direct methods
.method constructor <init>(Lg/g/a/a/i/n/g;)V
    .locals 0

    iput-object p1, p0, Lg/g/a/a/i/n/g$c;->this$0:Lg/g/a/a/i/n/g;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/google/gson/t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/t<",
            "Lg/g/a/a/i/o/n;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lg/g/a/a/i/n/g$c;->this$0:Lg/g/a/a/i/n/g;

    invoke-static {v0}, Lg/g/a/a/i/n/g;->access$getGson$p(Lg/g/a/a/i/n/g;)Lcom/google/gson/f;

    move-result-object v0

    const-class v1, Lg/g/a/a/i/o/n;

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->o(Ljava/lang/Class;)Lcom/google/gson/t;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/g/a/a/i/n/g$c;->invoke()Lcom/google/gson/t;

    move-result-object v0

    return-object v0
.end method
