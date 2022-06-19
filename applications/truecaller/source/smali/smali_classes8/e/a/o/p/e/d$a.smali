.class public final Le/a/o/p/e/d$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/o/p/e/d;-><init>(Lcom/truecaller/contextcall/db/ContextCallDatabase;Ls1/w/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/o/p/e/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/o/p/e/d;


# direct methods
.method public constructor <init>(Le/a/o/p/e/d;)V
    .locals 0

    iput-object p1, p0, Le/a/o/p/e/d$a;->b:Le/a/o/p/e/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/o/p/e/d$a;->b:Le/a/o/p/e/d;

    .line 2
    iget-object v0, v0, Le/a/o/p/e/d;->b:Lcom/truecaller/contextcall/db/ContextCallDatabase;

    .line 3
    invoke-virtual {v0}, Lcom/truecaller/contextcall/db/ContextCallDatabase;->a()Le/a/o/p/e/a;

    move-result-object v0

    return-object v0
.end method
