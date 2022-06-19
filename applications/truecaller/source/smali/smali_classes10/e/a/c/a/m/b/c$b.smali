.class public final Le/a/c/a/m/b/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/c/a/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/m/b/c;-><init>(Le/a/c/i/f/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/c/a/c/a<",
        "Ljava/lang/String;",
        "Landroidx/lifecycle/LiveData<",
        "Ln3/z/q1<",
        "Lcom/truecaller/insights/models/pdo/SmsBackupMessage;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/a/m/b/c;


# direct methods
.method public constructor <init>(Le/a/c/a/m/b/c;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/m/b/c$b;->a:Le/a/c/a/m/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    iget-object v0, p0, Le/a/c/a/m/b/c$b;->a:Le/a/c/a/m/b/c;

    .line 3
    iget-object v0, v0, Le/a/c/a/m/b/c;->c:Le/a/c/i/f/a;

    const-string v1, "it"

    .line 4
    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Le/a/c/i/f/a;->a(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method
