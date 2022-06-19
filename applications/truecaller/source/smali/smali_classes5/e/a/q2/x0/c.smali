.class public final Le/a/q2/x0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q2/w0/h/d;


# instance fields
.field public final a:Le/a/o/c;


# direct methods
.method public constructor <init>(Le/a/o/c;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "contextCall"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/q2/x0/c;->a:Le/a/o/c;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/q2/x0/c;->a:Le/a/o/c;

    invoke-interface {v0, p1, p2}, Le/a/o/c;->H(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
