.class public final Le/a/c/a/m/b/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/a1$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/c/a/m/b/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ls1/w/f;

.field public final b:Ls1/w/f;

.field public final c:Le/a/c/v/a;

.field public final d:Le/a/c/v/f/b/a;

.field public final e:Le/a/c/i/l/f/a;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Le/a/c/v/a;Le/a/c/v/f/b/a;Le/a/c/i/l/f/a;)V
    .locals 1

    const-string v0, "coroutineContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reminderManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionHandler"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smartNotificationManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/a/m/b/i$a;->a:Ls1/w/f;

    iput-object p2, p0, Le/a/c/a/m/b/i$a;->b:Ls1/w/f;

    iput-object p3, p0, Le/a/c/a/m/b/i$a;->c:Le/a/c/v/a;

    iput-object p4, p0, Le/a/c/a/m/b/i$a;->d:Le/a/c/v/f/b/a;

    iput-object p5, p0, Le/a/c/a/m/b/i$a;->e:Le/a/c/i/l/f/a;

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Ln3/v/y0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ln3/v/y0;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Le/a/c/a/m/b/i;

    iget-object v2, p0, Le/a/c/a/m/b/i$a;->c:Le/a/c/v/a;

    iget-object v3, p0, Le/a/c/a/m/b/i$a;->a:Ls1/w/f;

    iget-object v4, p0, Le/a/c/a/m/b/i$a;->b:Ls1/w/f;

    iget-object v5, p0, Le/a/c/a/m/b/i$a;->d:Le/a/c/v/f/b/a;

    iget-object v6, p0, Le/a/c/a/m/b/i$a;->e:Le/a/c/i/l/f/a;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Le/a/c/a/m/b/i;-><init>(Le/a/c/v/a;Ls1/w/f;Ls1/w/f;Le/a/c/v/f/b/a;Le/a/c/i/l/f/a;)V

    return-object p1
.end method
