.class public final Le/a/o/a/j/a$c;
.super Le/a/o/a/j/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/o/a/j/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final c:Lcom/truecaller/data/entity/Contact;

.field public final d:Ljava/lang/String;

.field public final e:Z


# direct methods
.method public constructor <init>(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 2

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsContext"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/truecaller/contextcall/ui/truecontext/CallContextSource;->IN_CALL_UI:Lcom/truecaller/contextcall/ui/truecontext/CallContextSource;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p4, p5, v1}, Le/a/o/a/j/a;-><init>(Lcom/truecaller/contextcall/ui/truecontext/CallContextSource;ZLjava/lang/String;Ls1/z/c/f;)V

    iput-object p1, p0, Le/a/o/a/j/a$c;->c:Lcom/truecaller/data/entity/Contact;

    iput-object p2, p0, Le/a/o/a/j/a$c;->d:Ljava/lang/String;

    iput-boolean p3, p0, Le/a/o/a/j/a$c;->e:Z

    return-void
.end method
