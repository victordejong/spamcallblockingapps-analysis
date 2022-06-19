.class public final Le/a/o/a/j/a$a;
.super Le/a/o/a/j/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/o/a/j/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final c:Lcom/truecaller/data/entity/HistoryEvent;

.field public final d:Z

.field public final e:Le/a/m5/b;


# direct methods
.method public constructor <init>(Lcom/truecaller/data/entity/HistoryEvent;ZLe/a/m5/b;ZLjava/lang/String;)V
    .locals 2

    const-string v0, "historyEvent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsContext"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/truecaller/contextcall/ui/truecontext/CallContextSource;->AFTER_CALL:Lcom/truecaller/contextcall/ui/truecontext/CallContextSource;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p4, p5, v1}, Le/a/o/a/j/a;-><init>(Lcom/truecaller/contextcall/ui/truecontext/CallContextSource;ZLjava/lang/String;Ls1/z/c/f;)V

    iput-object p1, p0, Le/a/o/a/j/a$a;->c:Lcom/truecaller/data/entity/HistoryEvent;

    iput-boolean p2, p0, Le/a/o/a/j/a$a;->d:Z

    iput-object p3, p0, Le/a/o/a/j/a$a;->e:Le/a/m5/b;

    return-void
.end method
