.class public final Le/a/o/a/j/a$b;
.super Le/a/o/a/j/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/o/a/j/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final c:Lcom/truecaller/data/entity/Contact;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsContext"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/truecaller/contextcall/ui/truecontext/CallContextSource;->CALLER_ID:Lcom/truecaller/contextcall/ui/truecontext/CallContextSource;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p3, p4, v1}, Le/a/o/a/j/a;-><init>(Lcom/truecaller/contextcall/ui/truecontext/CallContextSource;ZLjava/lang/String;Ls1/z/c/f;)V

    iput-object p1, p0, Le/a/o/a/j/a$b;->c:Lcom/truecaller/data/entity/Contact;

    iput-object p2, p0, Le/a/o/a/j/a$b;->d:Ljava/lang/String;

    return-void
.end method
