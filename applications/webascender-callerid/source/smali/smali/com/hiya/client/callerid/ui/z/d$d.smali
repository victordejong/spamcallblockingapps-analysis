.class Lcom/hiya/client/callerid/ui/z/d$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/client/callerid/ui/z/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj/a/a<",
        "Lg/g/d/h;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/hiya/client/callerid/ui/z/i;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/z/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/client/callerid/ui/z/d$d;->a:Lcom/hiya/client/callerid/ui/z/i;

    return-void
.end method


# virtual methods
.method public a()Lg/g/d/h;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/z/d$d;->a:Lcom/hiya/client/callerid/ui/z/i;

    invoke-interface {v0}, Lcom/hiya/client/callerid/ui/z/i;->d()Lg/g/d/h;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    invoke-static {v0, v1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lg/g/d/h;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/z/d$d;->a()Lg/g/d/h;

    move-result-object v0

    return-object v0
.end method
