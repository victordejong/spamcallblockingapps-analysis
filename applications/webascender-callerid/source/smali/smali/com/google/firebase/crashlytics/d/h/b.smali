.class public Lcom/google/firebase/crashlytics/d/h/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/d/h/b$c;,
        Lcom/google/firebase/crashlytics/d/h/b$b;
    }
.end annotation


# static fields
.field private static final d:Lcom/google/firebase/crashlytics/d/h/b$c;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/firebase/crashlytics/d/h/b$b;

.field private c:Lcom/google/firebase/crashlytics/d/h/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/firebase/crashlytics/d/h/b$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/crashlytics/d/h/b$c;-><init>(Lcom/google/firebase/crashlytics/d/h/b$a;)V

    sput-object v0, Lcom/google/firebase/crashlytics/d/h/b;->d:Lcom/google/firebase/crashlytics/d/h/b$c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/firebase/crashlytics/d/h/b$b;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/firebase/crashlytics/d/h/b;-><init>(Landroid/content/Context;Lcom/google/firebase/crashlytics/d/h/b$b;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/firebase/crashlytics/d/h/b$b;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/firebase/crashlytics/d/h/b;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/google/firebase/crashlytics/d/h/b;->b:Lcom/google/firebase/crashlytics/d/h/b$b;

    .line 5
    sget-object p1, Lcom/google/firebase/crashlytics/d/h/b;->d:Lcom/google/firebase/crashlytics/d/h/b$c;

    iput-object p1, p0, Lcom/google/firebase/crashlytics/d/h/b;->c:Lcom/google/firebase/crashlytics/d/h/a;

    .line 6
    invoke-virtual {p0, p3}, Lcom/google/firebase/crashlytics/d/h/b;->e(Ljava/lang/String;)V

    return-void
.end method

.method private d(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "crashlytics-userlog-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".temp"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/h/b;->b:Lcom/google/firebase/crashlytics/d/h/b$b;

    invoke-interface {v1}, Lcom/google/firebase/crashlytics/d/h/b$b;->a()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/b;->c:Lcom/google/firebase/crashlytics/d/h/a;

    invoke-interface {v0}, Lcom/google/firebase/crashlytics/d/h/a;->d()V

    return-void
.end method

.method public b()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/b;->c:Lcom/google/firebase/crashlytics/d/h/a;

    invoke-interface {v0}, Lcom/google/firebase/crashlytics/d/h/a;->c()[B

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/b;->c:Lcom/google/firebase/crashlytics/d/h/a;

    invoke-interface {v0}, Lcom/google/firebase/crashlytics/d/h/a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/b;->c:Lcom/google/firebase/crashlytics/d/h/a;

    invoke-interface {v0}, Lcom/google/firebase/crashlytics/d/h/a;->a()V

    .line 2
    sget-object v0, Lcom/google/firebase/crashlytics/d/h/b;->d:Lcom/google/firebase/crashlytics/d/h/b$c;

    iput-object v0, p0, Lcom/google/firebase/crashlytics/d/h/b;->c:Lcom/google/firebase/crashlytics/d/h/a;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/b;->a:Landroid/content/Context;

    const/4 v1, 0x1

    const-string v2, "com.crashlytics.CollectCustomLogs"

    .line 4
    invoke-static {v0, v2, v1}, Lcom/google/firebase/crashlytics/d/g/g;->k(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object p1

    const-string v0, "Preferences requested no custom logs. Aborting log file creation."

    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/d/h/b;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/high16 v0, 0x10000

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/crashlytics/d/h/b;->f(Ljava/io/File;I)V

    return-void
.end method

.method f(Ljava/io/File;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/firebase/crashlytics/d/h/d;

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/crashlytics/d/h/d;-><init>(Ljava/io/File;I)V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/d/h/b;->c:Lcom/google/firebase/crashlytics/d/h/a;

    return-void
.end method

.method public g(JLjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/b;->c:Lcom/google/firebase/crashlytics/d/h/a;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/firebase/crashlytics/d/h/a;->e(JLjava/lang/String;)V

    return-void
.end method
