.class public Le/i/b/q2/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/text/SimpleDateFormat;

.field public final b:Le/i/b/s2/f;

.field public final c:Landroid/content/Context;

.field public final d:Le/i/b/s2/b;

.field public final e:Le/i/b/e3;

.field public final f:Le/i/b/d2/c;

.field public final g:Le/i/b/e2;

.field public final h:Le/i/b/q2/j;


# direct methods
.method public constructor <init>(Le/i/b/s2/f;Landroid/content/Context;Le/i/b/s2/b;Le/i/b/e3;Le/i/b/d2/c;Le/i/b/e2;Le/i/b/q2/j;)V
    .locals 1

    const-string v0, "buildConfigWrapper"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "advertisingInfo"

    invoke-static {p3, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "session"

    invoke-static {p4, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "integrationRegistry"

    invoke-static {p5, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p6, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publisherCodeRemover"

    invoke-static {p7, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/i/b/q2/l;->b:Le/i/b/s2/f;

    iput-object p2, p0, Le/i/b/q2/l;->c:Landroid/content/Context;

    iput-object p3, p0, Le/i/b/q2/l;->d:Le/i/b/s2/b;

    iput-object p4, p0, Le/i/b/q2/l;->e:Le/i/b/e3;

    iput-object p5, p0, Le/i/b/q2/l;->f:Le/i/b/d2/c;

    iput-object p6, p0, Le/i/b/q2/l;->g:Le/i/b/e2;

    iput-object p7, p0, Le/i/b/q2/l;->h:Le/i/b/q2/j;

    .line 2
    new-instance p1, Ljava/text/SimpleDateFormat;

    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string p3, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {p1, p3, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string p2, "UTC"

    .line 3
    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4
    iput-object p1, p0, Le/i/b/q2/l;->a:Ljava/text/SimpleDateFormat;

    return-void
.end method
