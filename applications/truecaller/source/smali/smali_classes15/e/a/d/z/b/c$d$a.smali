.class public final Le/a/d/z/b/c$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/z/b/c$d;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/d/z/b/c$d;


# direct methods
.method public constructor <init>(Le/a/d/z/b/c$d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/z/b/c$d$a;->a:Le/a/d/z/b/c$d;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Le/a/d/z/b/c$d$a;->a:Le/a/d/z/b/c$d;

    iget-object p1, p1, Le/a/d/z/b/c$d;->f:Le/a/d/z/b/c;

    .line 3
    iget-object p2, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/d/z/b/b;

    if-eqz p2, :cond_0

    .line 4
    sget v0, Lcom/truecaller/voip/R$string;->voip_status_ending:I

    invoke-static {p1, v0}, Le/a/d/z/b/c;->Jj(Le/a/d/z/b/c;I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Le/a/d/z/b/b;->h(Ljava/lang/String;)V

    .line 5
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
