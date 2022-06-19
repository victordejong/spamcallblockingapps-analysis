.class public final synthetic Le/m/d/n/j/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/v/a$a;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:J

.field public final synthetic d:Le/m/d/n/j/l/c0;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JLe/m/d/n/j/l/c0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/d/n/j/b;->a:Ljava/lang/String;

    iput-object p2, p0, Le/m/d/n/j/b;->b:Ljava/lang/String;

    iput-wide p3, p0, Le/m/d/n/j/b;->c:J

    iput-object p5, p0, Le/m/d/n/j/b;->d:Le/m/d/n/j/l/c0;

    return-void
.end method


# virtual methods
.method public final a(Le/m/d/v/b;)V
    .locals 6

    iget-object v1, p0, Le/m/d/n/j/b;->a:Ljava/lang/String;

    iget-object v2, p0, Le/m/d/n/j/b;->b:Ljava/lang/String;

    iget-wide v3, p0, Le/m/d/n/j/b;->c:J

    iget-object v5, p0, Le/m/d/n/j/b;->d:Le/m/d/n/j/l/c0;

    .line 1
    invoke-interface {p1}, Le/m/d/v/b;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Le/m/d/n/j/c;

    .line 2
    invoke-interface/range {v0 .. v5}, Le/m/d/n/j/c;->a(Ljava/lang/String;Ljava/lang/String;JLe/m/d/n/j/l/c0;)V

    return-void
.end method
