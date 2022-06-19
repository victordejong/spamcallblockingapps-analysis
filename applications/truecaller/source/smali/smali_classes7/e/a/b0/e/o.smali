.class public final Le/a/b0/e/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:J

.field public static final b:J

.field public static final c:J

.field public static final d:J

.field public static final synthetic e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Le/a/b0/e/o;->a:J

    const-wide/16 v1, 0xa

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Le/a/b0/e/o;->b:J

    .line 3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Le/a/b0/e/o;->c:J

    .line 4
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Le/a/b0/e/o;->d:J

    return-void
.end method

.method public static final a(Lcom/truecaller/account/network/AccountPhoneNumberDto;)Le/a/b0/e/b;
    .locals 5

    .line 1
    new-instance v0, Le/a/b0/e/b;

    invoke-virtual {p0}, Lcom/truecaller/account/network/AccountPhoneNumberDto;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2b

    invoke-static {v2}, Le/d/c/a/a;->w(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/truecaller/account/network/AccountPhoneNumberDto;->getPhoneNumber()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Le/a/b0/e/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
