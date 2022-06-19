.class public final Le/m/a/f/l/a/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Le/m/a/f/l/a/p;

.field public final b:I

.field public final c:Ljava/lang/Throwable;

.field public final d:[B

.field public final e:Ljava/lang/String;

.field public final f:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/lang/String;Le/m/a/f/l/a/p;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "null reference"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Le/m/a/f/l/a/q;->a:Le/m/a/f/l/a/p;

    iput p3, p0, Le/m/a/f/l/a/q;->b:I

    iput-object p4, p0, Le/m/a/f/l/a/q;->c:Ljava/lang/Throwable;

    iput-object p5, p0, Le/m/a/f/l/a/q;->d:[B

    iput-object p1, p0, Le/m/a/f/l/a/q;->e:Ljava/lang/String;

    iput-object p6, p0, Le/m/a/f/l/a/q;->f:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/q;->a:Le/m/a/f/l/a/p;

    iget-object v1, p0, Le/m/a/f/l/a/q;->e:Ljava/lang/String;

    iget v2, p0, Le/m/a/f/l/a/q;->b:I

    iget-object v3, p0, Le/m/a/f/l/a/q;->c:Ljava/lang/Throwable;

    iget-object v4, p0, Le/m/a/f/l/a/q;->d:[B

    iget-object v5, p0, Le/m/a/f/l/a/q;->f:Ljava/util/Map;

    invoke-interface/range {v0 .. v5}, Le/m/a/f/l/a/p;->a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void
.end method
