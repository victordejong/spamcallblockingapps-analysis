.class public abstract Le/m/b/x/a/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/b/x/a/e/a$a;
    }
.end annotation


# static fields
.field public static final f:Ljava/util/logging/Logger;


# instance fields
.field public final a:Le/m/b/x/b/o;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Le/m/b/x/d/s;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Le/m/b/x/a/e/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Le/m/b/x/a/e/a;->f:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Le/m/b/x/a/e/a$a;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p1, Le/m/b/x/a/e/a$a;->d:Ljava/lang/String;

    invoke-static {v0}, Le/m/b/x/a/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le/m/b/x/a/e/a;->b:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Le/m/b/x/a/e/a$a;->e:Ljava/lang/String;

    invoke-static {v0}, Le/m/b/x/a/e/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le/m/b/x/a/e/a;->c:Ljava/lang/String;

    .line 5
    iget-object v0, p1, Le/m/b/x/a/e/a$a;->g:Ljava/lang/String;

    .line 6
    invoke-static {v0}, Ln3/g0/y;->isNullOrEmpty1(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    sget-object v0, Le/m/b/x/a/e/a;->f:Ljava/util/logging/Logger;

    const-string v1, "Application name is not set. Call Builder#setApplicationName."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 8
    :cond_0
    iget-object v0, p1, Le/m/b/x/a/e/a$a;->g:Ljava/lang/String;

    iput-object v0, p0, Le/m/b/x/a/e/a;->d:Ljava/lang/String;

    .line 9
    iget-object v0, p1, Le/m/b/x/a/e/a$a;->b:Le/m/b/x/b/p;

    if-nez v0, :cond_1

    iget-object v0, p1, Le/m/b/x/a/e/a$a;->a:Le/m/b/x/b/t;

    .line 10
    invoke-virtual {v0}, Le/m/b/x/b/t;->b()Le/m/b/x/b/o;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p1, Le/m/b/x/a/e/a$a;->a:Le/m/b/x/b/t;

    .line 11
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v2, Le/m/b/x/b/o;

    invoke-direct {v2, v1, v0}, Le/m/b/x/b/o;-><init>(Le/m/b/x/b/t;Le/m/b/x/b/p;)V

    move-object v0, v2

    .line 13
    :goto_0
    iput-object v0, p0, Le/m/b/x/a/e/a;->a:Le/m/b/x/b/o;

    .line 14
    iget-object p1, p1, Le/m/b/x/a/e/a$a;->c:Le/m/b/x/d/s;

    iput-object p1, p0, Le/m/b/x/a/e/a;->e:Le/m/b/x/d/s;

    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "root URL cannot be null."

    .line 1
    invoke-static {p0, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {p0, v0}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "service path cannot be null"

    .line 1
    invoke-static {p0, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "/"

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v0, "service path must equal \"/\" if it is of length 1."

    .line 4
    invoke-static {p0, v0}, Ln3/g0/y;->checkArgument2(ZLjava/lang/Object;)V

    const-string p0, ""

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 6
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    invoke-static {p0, v2}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 8
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_0
    return-object p0
.end method


# virtual methods
.method public a()Le/m/b/x/d/s;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/x/a/e/a;->e:Le/m/b/x/d/s;

    return-object v0
.end method
