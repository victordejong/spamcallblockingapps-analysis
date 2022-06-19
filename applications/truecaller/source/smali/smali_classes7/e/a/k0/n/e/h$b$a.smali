.class public final Le/a/k0/n/e/h$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k0/n/e/h$b;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Le/a/k0/n/e/i;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/k0/n/e/h$b;


# direct methods
.method public constructor <init>(Le/a/k0/n/e/h$b;)V
    .locals 0

    iput-object p1, p0, Le/a/k0/n/e/h$b$a;->a:Le/a/k0/n/e/h$b;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Le/a/k0/n/e/i;

    .line 2
    iget-object p2, p0, Le/a/k0/n/e/h$b$a;->a:Le/a/k0/n/e/h$b;

    iget-object p2, p2, Le/a/k0/n/e/h$b;->f:Le/a/k0/n/e/h;

    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    instance-of v0, p1, Le/a/k0/n/e/i$b;

    if-eqz v0, :cond_0

    iget-object p1, p2, Le/a/k0/n/e/h;->g:Le/a/k0/n/e/b;

    if-eqz p1, :cond_1

    .line 5
    new-instance p2, Le/a/k0/n/e/c$a;

    .line 6
    sget v0, Lcom/truecaller/callrecording/R$string;->callrecording_internal_player_error:I

    .line 7
    invoke-direct {p2, v0}, Le/a/k0/n/e/c$a;-><init>(I)V

    .line 8
    invoke-interface {p1, p2}, Le/a/k0/n/e/b;->O4(Le/a/k0/n/e/c;)V

    goto :goto_0

    .line 9
    :cond_0
    instance-of p1, p1, Le/a/k0/n/e/i$a;

    if-eqz p1, :cond_1

    iget-object p1, p2, Le/a/k0/n/e/h;->g:Le/a/k0/n/e/b;

    if-eqz p1, :cond_1

    .line 10
    new-instance p2, Le/a/k0/n/e/c$a;

    .line 11
    sget v0, Lcom/truecaller/callrecording/R$string;->callrecording_internal_player_file_corrupted:I

    .line 12
    invoke-direct {p2, v0}, Le/a/k0/n/e/c$a;-><init>(I)V

    .line 13
    invoke-interface {p1, p2}, Le/a/k0/n/e/b;->O4(Le/a/k0/n/e/c;)V

    .line 14
    :cond_1
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
