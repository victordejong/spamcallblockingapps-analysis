.class public final Lcom/truecaller/callhero_assistant/CallAssistantGraphProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r3/j/c;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/a/r3/j/c<",
        "Le/a/s/e;",
        "Le/a/s/e$a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/truecaller/callhero_assistant/CallAssistantGraphProvider;",
        "Le/a/r3/j/c;",
        "Le/a/s/e;",
        "Le/a/s/e$a;",
        "dependencies",
        "get",
        "(Le/a/s/e$a;)Le/a/s/e;",
        "<init>",
        "()V",
        "callhero_assistant_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;)Le/a/r3/j/a;
    .locals 0

    .line 5
    check-cast p1, Le/a/s/e$a;

    invoke-virtual {p0, p1}, Lcom/truecaller/callhero_assistant/CallAssistantGraphProvider;->get(Le/a/s/e$a;)Le/a/s/e;

    move-result-object p1

    return-object p1
.end method

.method public get(Le/a/s/e$a;)Le/a/s/e;
    .locals 2

    const-string v0, "dependencies"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Le/a/s/i;->q:I

    .line 2
    const-class v0, Le/a/s/e$a;

    invoke-static {p1, v0}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 3
    new-instance v0, Le/a/s/i;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Le/a/s/i;-><init>(Le/a/s/e$a;Le/a/s/i$a;)V

    const-string p1, "DaggerCallAssistantCompo\u2026ies(dependencies).build()"

    .line 4
    invoke-static {v0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
