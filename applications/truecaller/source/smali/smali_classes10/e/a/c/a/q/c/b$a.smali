.class public final Le/a/c/a/q/c/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/l0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/q/c/b;-><init>(Le/a/c/a/q/b/c;Le/a/c/a/i/h;Le/a/c/a/i/j;Le/a/c/c0/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/v/l0<",
        "Ln3/z/q1<",
        "Lcom/truecaller/insights/ui/models/AdapterItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/a/q/c/b;


# direct methods
.method public constructor <init>(Le/a/c/a/q/c/b;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/q/c/b$a;->a:Le/a/c/a/q/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ln3/z/q1;

    .line 2
    iget-object v0, p0, Le/a/c/a/q/c/b$a;->a:Le/a/c/a/q/c/b;

    .line 3
    iget-object v0, v0, Le/a/c/a/q/c/b;->b:Ln3/v/i0;

    .line 4
    invoke-virtual {v0, p1}, Ln3/v/k0;->l(Ljava/lang/Object;)V

    return-void
.end method
