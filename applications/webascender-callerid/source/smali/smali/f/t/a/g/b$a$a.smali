.class Lf/t/a/g/b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/t/a/g/b$a;-><init>(Landroid/content/Context;Ljava/lang/String;[Lf/t/a/g/a;Lf/t/a/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lf/t/a/c$a;

.field final synthetic b:[Lf/t/a/g/a;


# direct methods
.method constructor <init>(Lf/t/a/c$a;[Lf/t/a/g/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/t/a/g/b$a$a;->a:Lf/t/a/c$a;

    iput-object p2, p0, Lf/t/a/g/b$a$a;->b:[Lf/t/a/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/t/a/g/b$a$a;->a:Lf/t/a/c$a;

    iget-object v1, p0, Lf/t/a/g/b$a$a;->b:[Lf/t/a/g/a;

    invoke-static {v1, p1}, Lf/t/a/g/b$a;->b([Lf/t/a/g/a;Landroid/database/sqlite/SQLiteDatabase;)Lf/t/a/g/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lf/t/a/c$a;->c(Lf/t/a/b;)V

    return-void
.end method
