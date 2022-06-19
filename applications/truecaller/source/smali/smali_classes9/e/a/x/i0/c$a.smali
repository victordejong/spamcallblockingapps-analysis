.class public final Le/a/x/i0/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/x/i0/c;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Lcom/truecaller/ghost_call/GhostCallState;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/x/i0/c;


# direct methods
.method public constructor <init>(Le/a/x/i0/c;)V
    .locals 0

    iput-object p1, p0, Le/a/x/i0/c$a;->a:Le/a/x/i0/c;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/ghost_call/GhostCallState;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/truecaller/ghost_call/GhostCallState;

    .line 2
    iget-object p2, p0, Le/a/x/i0/c$a;->a:Le/a/x/i0/c;

    iget-object p2, p2, Le/a/x/i0/c;->f:Le/a/x/i0/d;

    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/truecaller/incallui/callui/callergradient/GradientColors;->IDENTIFIED:Lcom/truecaller/incallui/callui/callergradient/GradientColors;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x3f0ccccd    # 0.55f

    goto :goto_0

    :cond_0
    const p1, 0x3f4ccccd    # 0.8f

    .line 6
    :goto_0
    iget-object p2, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/x/i0/b;

    if-eqz p2, :cond_1

    const-wide/16 v1, 0x12c

    invoke-interface {p2, v0, p1, v1, v2}, Le/a/x/i0/b;->a(Lcom/truecaller/incallui/callui/callergradient/GradientColors;FJ)V

    .line 7
    :cond_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
